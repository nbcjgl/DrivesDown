#!/bin/bash
wget https://nyaa.si/download/1467627.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent

rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ "onedrive:/我的文件 - animation_0 的文件/temp/[LoliHouse] 因为不是真正的伙伴而被逐出勇者队伍，流落到边境展开慢活人生"
