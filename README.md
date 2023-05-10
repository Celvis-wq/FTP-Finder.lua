# FTPFinder.lua
# Version: 0.0.2

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
1. Renamed some variables (Had to to be more descriptive)
2. Changed all global functions to local functions (Local functions are faster and prevent unintended access from outside the module)
3. Removed the unused errorMsg variable from the isPortOpen function (The variable was not being used, so it is better to use an underscore (_) to discard it)
4. Changed the return statement in the isPortOpen function (Simplified the return statement by returning the result of the comparison directly)
5. Changed the variable name 'ports' to 'portsUrl' in the main function (I just decided that portsUrl is more descriptive)

TODO:
1. Improve something idk. its fine how it is as of right now.









