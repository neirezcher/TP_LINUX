#!/bin/sh

percentage=$(df -Pk | grep "/$" | awk '{print $4 *100 / $2}')
datetime=$(date)

echo "Il vous reste $percentage% de stockage a $datetime" >> /filesystem.log

