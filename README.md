# FTPFinder.lua
# Version: 0.0.3

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
1. Added Cached DNS Resolution (I cached the DNS resolution result to avoid repeated DNS lookups for the same IP address)
2. Increased Timeout. (I increased the timeout value to 5 seconds to provide more time for each connection attempt)
3. Localized multiple functions. (I specifically localized isPortOpen, loadFtpPorts, and scanFtpPorts functions to avoid repeated table lookups)
4. Optimized string concatenation. (I didn't change the string concatenation directly, but by localizing the functions and variables, there are fewer table lookups, which can help optimize string concatenation implicitly, pretty useful)
5. Optimized the main function. (I used the previously defined resolvedIp and timeout variables, nothing crazy)

TODO:
1. Nothing at this current time.
