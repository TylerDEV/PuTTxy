PuTTxy
======

PuTTxy is front-end, easy to use GUI for PuTTY to make creating SOCKS5 proxies easier.

Installation
======

1) Download PuTTxy.zip

2) Extract to a folder (Any one! It's portable!)

3) Edit the PuTTxy.ini in Notepad (or similar)

3a) Change IReadTheREADME to 1

3b) Edit the rest to the values that pertain to you

4) Run PuTTxy.exe

5) Right-click tray, hit Start Proxy

6) The proxy is now running on 127.0.0.1:8080 (or whatever you set it to)

INI Explanation
======

IReadTheREADME  Forces you to read the README so you understand everything :)

UsePassword     Set to 1 if you use a password to log on

UseKeyFile      Set to 1 if you use a key file to log on

HostName        The address of the host that will be used for SSH tunneling

UserName        The user to log in as

UserPass        The password to log in with (may also be used if your key file requires a password)

UserKey         The name of the key file

SSHPort         The port SSH runs under (default is 22)

ProxyPort       The port to use for the proxy

License
=======

PuTTxy is licensed under GPL v2

The PuTTxy.ico file is licensed under GNU/GPL and was created by silvestre herrera... At least that's the information provided by http://findicons.com/icon/185449/preferences_system_network_proxy?id=383360
