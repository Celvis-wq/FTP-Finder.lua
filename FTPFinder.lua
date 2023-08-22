-- FTP Finder.lua
--[[
    Version: 0.0.3
    Created by: Celvis#5477
]]

local socket = require("socket")
local http = require("socket.http")

-- Cache DNS resolution
local ip = io.read()
local ipInfo = socket.dns.getaddrinfo(ip)
local resolvedIp = ipInfo[1].addr

-- Increase timeout
local timeout = 5

-- Function to check if a port is open
local function isPortOpen(port)
    local sock = socket.tcp()
    sock:settimeout(timeout)
    local result, errorMsg = sock:connect(resolvedIp, port)
    sock:close()
    return result ~= nil
end

-- Function to load ports from the URL
local function loadFtpPorts(url)
    local response, statusCode = http.request(url)
    if statusCode ~= 200 then
        error("Failed to load ports from URL. HTTP status code: " .. tostring(statusCode))
    end
    
    local ports = {}
    for port in string.gmatch(response, "%d+") do
        table.insert(ports, tonumber(port))
    end
    return ports
end

-- Function to scan ports
local function scanFtpPorts(ftpPorts)
    local openPorts = {}

    for _, port in ipairs(ftpPorts) do
        if isPortOpen(port) then
            table.insert(openPorts, port)
        end
    end
    return openPorts
end

-- Main
local function main()
    local portsUrl = "https://raw.githubusercontent.com/Celvis-wq/ports/main/ports.txt"
    local ftpPorts = loadFtpPorts(portsUrl)
    
    print("Scanning FTP ports on " .. ip)
    local openPorts = scanFtpPorts(ftpPorts)
    
    if #openPorts == 0 then
        print("No open FTP ports found.")
    else
        print("Open FTP ports:")
        for _, port in ipairs(openPorts) do
            print("  - " .. port)
        end
    end
end

main()
