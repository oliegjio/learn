### Package Manager:

1. `sudo apt-get install <package>` - Install a package.
2. `apt-file search <file_name>` - Search for repositories that conteins a file.
3. `sudo apt-get update` - Update local repositories cache.
4. `sudo apt-get purge --auto-remove <package>` - Completely removes a package and all of it's unused dependencies.

### Enable Extra Repositories:
Add this to `/etc/apt/sources.list`:

```
deb http://extras.ubuntu.com/ubuntu precise main
deb-src http://extras.ubuntu.com/ubuntu precise main

deb http://us.archive.ubuntu.com/ubuntu/ oneiric multiverse
deb http://us.archive.ubuntu.com/ubuntu/ oneiric-updates multiverse

deb http://archive.ubuntu.com/ubuntu trusty universe
```

### Compiling C++ and C Programs:
Install: `sudo apt-get install g++ gcc build-essential`.

### Wifi Networks:

1. Scan for networks: `sudo iwlist wlan0 scan`.
2. Connect to the network: `sudo iwconfig <interface> essid <SSID>`.