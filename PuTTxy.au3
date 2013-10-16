#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Tyler (tyler@tyler.li)
 Version:		 1.0
 Website:		 https://tyler.li/projects/puttxy

 Script Function:
	Easy SOCKS5 Proxy Via PuTTY

#ce ----------------------------------------------------------------------------
#include <Constants.au3>

Opt("TrayMenuMode", 1)
TrayCreateItem("Proxy Controls", -1, -1, 0)
Local $PStart = TrayCreateItem("Start Proxy", -1, -1, 1)
Local $PStop = TrayCreateItem("Stop Proxy", -1, -1, 1)
TrayItemSetState(-1, $TRAY_CHECKED)
TrayCreateItem("")
$aboutitem = TrayCreateItem("About")
TrayCreateItem("")
$exititem = TrayCreateItem("Exit")

TraySetState()

While 1
    $msg = TrayGetMsg()
    Select
         Case $msg = 0
            ContinueLoop
         Case $msg = $aboutitem
            MsgBox(64, "About PuTTxy:", "Made By Tyler (tyler@tyler.li) - tyler.li/projects/puttxy")
	     Case $msg = $PStart
			If Not FileExists("PuTTxy.ini") Then
			   MsgBox(0, "Ini Not Found", "PuTTxy.ini file was not found. Sorry.")
			Else
			   If IniRead("PuTTxy.ini", "Config", "IReadTheREADME", "0") = 1 Then
				  If IniRead("PuTTxy.ini", "Config", "UsePassword", "0") = 1 AND IniRead("PuTTxy.ini", "Config", "UseKeyFile", "0") = 1 Then
					 $hostname = IniRead("PuTTxy.ini", "Info", "HostName", "0")
					 $username = IniRead("PuTTxy.ini", "Info", "UserName", "0")
					 $userpass = IniRead("PuTTxy.ini", "Info", "UserPass", "0")
					 $userkey = IniRead("PuTTxy.ini", "Info", "UserKey", "0")
					 $sshport = IniRead("PuTTxy.ini", "Info", "SSHPort", "0")
					 $proxyport = IniRead("PuTTxy.ini", "Info", "ProxyPort", "0")
					 Run('"putty.exe" -l ' & $username & ' -ssh -i ' & $userkey & ' -pw ' & $userpass & ' -D ' & $proxyport & ' -P ' & $sshport & ' ' & $hostname, "", @SW_HIDE)
				  ElseIf IniRead("PuTTxy.ini", "Config", "UsePassword", "0") = 1 AND IniRead("PuTTxy.ini", "Config", "UseKeyFile", "0") = 0 Then
					 $hostname = IniRead("PuTTxy.ini", "Info", "HostName", "0")
					 $username = IniRead("PuTTxy.ini", "Info", "UserName", "0")
					 $userpass = IniRead("PuTTxy.ini", "Info", "UserPass", "0")
					 $sshport = IniRead("PuTTxy.ini", "Info", "SSHPort", "0")
					 $proxyport = IniRead("PuTTxy.ini", "Info", "ProxyPort", "0")
					 Run('"putty.exe" -l ' & $username & ' -ssh -pw ' & $userpass & ' -D ' & $proxyport & ' -P ' & $sshport & ' ' & $hostname, "", @SW_HIDE)
				  ElseIf IniRead("PuTTxy.ini", "Config", "UsePassword", "0") = 0 AND IniRead("PuTTxy.ini", "Config", "UseKeyFile", "0") = 1 Then
					 $hostname = IniRead("PuTTxy.ini", "Info", "HostName", "0")
					 $username = IniRead("PuTTxy.ini", "Info", "UserName", "0")
					 $userkey = IniRead("PuTTxy.ini", "Info", "UserKey", "0")
					 $sshport = IniRead("PuTTxy.ini", "Info", "SSHPort", "0")
					 $proxyport = IniRead("PuTTxy.ini", "Info", "ProxyPort", "0")
					 Run('"putty.exe" -l ' & $username & ' -ssh -i ' & $userkey & ' -D ' & $proxyport & ' -P ' & $sshport & ' ' & $hostname, "", @SW_HIDE)
				  EndIf
			   Else
				  MsgBox(0, "RTFM", "Please read the README.txt")
			   EndIf
			EndIf
		 Case $msg = $PStop
			ProcessClose("PUTTY.EXE")
         Case $msg = $exititem
            ExitLoop
    EndSelect
WEnd

Exit