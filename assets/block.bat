@echo off
echo 腳本已啟動，等待 30 秒後將自動封鎖監控端...
timeout /t 30 /nobreak
netsh advfirewall firewall add rule name="BlockVeyonOut" dir=out action=block remoteip=192.168.20.99
echo 封鎖規則已生效！
pause