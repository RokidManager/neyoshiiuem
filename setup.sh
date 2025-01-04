#!/bin/bash
termux-setup-storage
pkg update -y
pkg install -y python python-pip tsu libexpat openssl

pip install requests Flask colorama aiohttp psutil crypto pycryptodome prettytable loguru rich pytz websocket-client

curl -Ls "https://raw.githubusercontent.com/RokidManager/neyoshiiuem/refs/heads/main/Rokid-Setup" -o /sdcard/Download/Rokid-UGPhone.py

echo "Rokid Setup completed successfully!"
