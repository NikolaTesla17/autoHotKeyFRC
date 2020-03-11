#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C://  ; Ensures a consistent starting directory.


;to do: make the stupid smart dashboard stuff seperate and add a script to create more desktops: also maybe one for personal tab or simulator

SetWorkingDir C:\Program Files (x86)\Windscribe
Run, WindscribeLauncher

sleep 20000

SetWorkingDir C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application
Run, brave.exe,, Max

;fullscreen
sleep 2000
send {Alt down}
send {Space down}
sleep 200
send {x down}
sleep 200
send {x up}
send {LAlt up}
send {Space up}

;switch desktop
sleep 500
send {Lwin down}
send {Control down}
send {Right down}
sleep 200
send {Lwin up}
send {Control up}
send {Right up}

SetWorkingDir C:\Users\chall\AppData\Local\GitHubDesktop
Run, GitHubDesktop

sleep 2500
winactivate ahk_exe GitHubDesktop.exe
sleep 500
send {Control down}
send {LShift down}
send {p down}
sleep 200
send {p up}
send {Control up}
send {LShift up}
sleep 10000

SetWorkingDir C:\Users\Public\wpilib\2020\vscode
Run, code

sleep 5000
send {Control down}
send {LShift down}
send {p down}
send {p up}
send {Control up}
send {LShift up}
sleep 300
send {b down}{b up}
sleep 50
send {u down}{u up}
sleep 50
send {i down}{i up}
sleep 50
send {Enter down}{Enter up}


;switch desktop
sleep 200
send {Lwin down}
send {Control down}
send {Right down}
sleep 200
send {Lwin up}
send {Control up}
send {Right up}

SetWorkingDir C:\Program Files (x86)\FRC Driver Station
Run, DriverStation

WinWait, Shuffleboard.jar, , 2000
	winactivate ahk_exe DriverStation.exe
Exit