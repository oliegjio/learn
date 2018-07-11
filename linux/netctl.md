Netctl allow you to automatically connect to WiFi networks:
- `sudo pacman -S wpa_actiond`.
- Make sure that there is no active `wpa_supplicant` and WiFi interface is down.
- `sudo systemctl enable netctl-auto@wlo1.service`.