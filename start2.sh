#!/bin/bash

interval= 3
bootwait=10
game=minecraft_server.1.12.1

while true
  do
  a = `ps -ef | grep $game | grep -v grep | wc -l`
  if [ $a = 1 ]; then
    echo "問題なし"
  else
    echo "停止している"
    flag=true
    while $flag
    do
    echo "再起動なう"
    b = `ps -ef | grep $game | grep -v grep | wc -l`
    if [ $b = 1 ]; then
      flag=false
    fi
    sleep $bootwait
    screen -AmdS mc java -Xmx1524M -Xms1524M -jar minecraft_server.1.12.1.jar nogui
    done
    fi
  sleep $interval
done




done



