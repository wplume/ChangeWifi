@echo off
chcp 65001
set tempFile=temp.txt

:: 此处请修改为你自己的WiFi
set wifi1="5g"

:: 此处请修改为公司的WiFi
set wifi2="Sunwinon.Co"

set wifi=""

netsh wlan show interfaces > %tempFile%

type %tempFile% | find %wifi1% && set wifi=%wifi2% || set wifi=%wifi1%
del %tempFile%
echo 正在连接%wifi%......
netsh wlan connect ssid=%wifi% name=%wifi% || pause