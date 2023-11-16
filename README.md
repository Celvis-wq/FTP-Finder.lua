# FTPFinder.lua
# Version: 0.0.4
- By: Celvis

## Purpose:

- This script scans the network you are on for FTP ports (File Transfer Protocol) using a list of ports. For pentesters.
<br />

## FAQ:
- Have LuaSocket to use. Install: luarocks install luasocket
- Linux: sudo apt-get install lua5.1
- This program is not complete at the moment. I will continue to improve and add more to this program. Please report any issues to me @discord: Celvis#5477

### How to use:
- cd /FTPFinder
- lua FTPFinder
- OR: chmod u+x FTPFinder
- ./FTPFinder

# Languages used:
- Lua
<img align="left" alt="" width="26px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Lua-Logo.svg/600px-Lua-Logo.svg.png?20150107024942" style="padding-right:10px;" />

<br />
<br />

---

### Changelog:
Changes:
1. Added a check (Error Handling) for successful DNS resolution to prevent runtime errors.
2. Added a check for the successful closure of socket connections.
3. Added a basic check for valid IP address input to prevent unexpected script behavior. It will now identify invalid IP addresses
4. I set the URL and timeout as constants for easier modification (Parameterizing any and all constants).
5. I improved error messages and all, included the URL in the error message for better context when an error occurs.
6. Updated overall performance, things should run smoother now.

TODO:
1. Nothing at this current time.
