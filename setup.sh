#!/bin/bash
termux-setup-storage && yes | pkg update && yes | pkg upgrade && yes | pkg i python && yes | pkg install python-pip && pkg install python tsu libexpat openssl -y && pip install requests Flask colorama aiohttp psutil crypto pycryptodome prettytable loguru rich pytz websocket-client
curl -Ls "https://raw.githubusercontent.com/RokidManager/neyoshiiuem/refs/heads/main/Rokid-Setup" -o /sdcard/Download/Rokid-UGPhone.py
