#!/bin/bash
wget https://nyaa.si/download/1457438.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent

rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ "onedrive:/我的文件 - animation_0 的文件/temp/[LoliHouse] 世界顶尖的暗杀者转生为异世界贵族"
