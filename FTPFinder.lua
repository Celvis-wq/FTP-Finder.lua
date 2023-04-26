-- FTP Finder.lua
--[[
    Version: 0.0.2
    Created by: Celvis#5477
]]

-- Import required modules
local socket = require("socket")
local http = require("socket.http")

-- Function to check if a port is open
function isPortOpen(ip, port)
    local sock = socket.tcp()
    sock:settimeout(1) -- Timeout (Seconds)
    local result, errorMsg = sock:connect(ip, port)
    sock:close()

    return result ~= nil
end

-- Function to load ports from the URL
function loadFtpPorts(url)
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
function scanFtpPorts(ip, ftpPorts)
    local openPorts = {}

    for _, port in ipairs(ftpPorts) do
        if isPortOpen(ip, port) then
            table.insert(openPorts, port)
        end
    end
    return openPorts
end

-- Main
local function main()
    print("Enter the target IP address:")
    local ip = io.read()

    local portsUrl = "https://raw.githubusercontent.com/Celvis-wq/ports/main/ports.txt"
    local ftpPorts = loadFtpPorts(portsUrl)
    
    print("Scanning FTP ports on " .. ip)
    local openPorts = scanFtpPorts(ip, ftpPorts)
    
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
