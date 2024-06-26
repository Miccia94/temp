#!/bin/bash
apt install snapd
snap install core
snap install ubuntu-frame mesa-core20 ubuntu-frame-osk wpe-webkit-mir-kiosk
snap set wpe-webkit-mir-kiosk url=http://10.250.10.45/login.aspx?lang=ROM
snap set ubuntu-frame daemon=true
snap set ubuntu-frame-osk daemon=true
snap set wpe-webkit-mir-kiosk daemon=true
mkdir -p /var/snap/ubuntu-frame-osk/common/squeekboard/keyboards/
curl -o /var/snap/ubuntu-frame-osk/common/squeekboard/keyboards/us_wide.yaml https://raw.githubusercontent.com/Miccia94/temp/main/us_wide.yaml
