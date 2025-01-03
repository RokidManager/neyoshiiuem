#!/bin/bash
termux-setup-storage && yes | pkg update && yes | pkg upgrade && yes | pkg i python && yes | pkg i android-tools && yes | pkg i python-pip && pip install requests Flask colorama aiohttp psutil crypto pycryptodome prettytable loguru rich websockets pytz
curl -Ls "https://raw.githubusercontent.com/RokidManager/neyoshiiuem/refs/heads/main/Rokid-UGPhone" -o /storage/emulated/0/Download/Rokid-UGPhone.py
