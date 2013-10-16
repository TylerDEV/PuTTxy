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
