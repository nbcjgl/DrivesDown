#!/bin/bash
wget https://nyaa.si/download/1504556.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#
rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ "onedrive:/我的文件 - animation_0 的文件/temp/lolihouse/[悠哈璃羽字幕社&LoliHouse] 擅长捉弄的高木同学3"
