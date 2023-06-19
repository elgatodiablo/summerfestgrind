#Persistent
tooltip, Grinding Beach Balls Press F3 to Stop, 110, 0, 3
SetTimer, MiniTimer, 10000
return

MiniTimer:
	If ((A_Min=02) OR (A_Min=12) OR (A_Min=22) or (A_Min=32) OR (A_Min=42) OR (A_Min=52)) && (A_sec>15)
	{
	    winget cnt, list, ahk_exe robloxplayerbeta.exe
        loop, %cnt%
			{
		if (A_Min=03) OR (A_Min=13) OR (A_Min=23) or (A_Min=33) OR (A_Min=43) OR (A_Min=53)
			Break
	    sleep, 250
;		Click,Left,968,822
		Click, Left,722,476
		sleep 2500
		send {alt down}
        send {shift down}
        SLEEP, 250
        send {tab}
        SLEEP, 250
		send {alt up}
        send {shift up}
		sleep, 2500
		}
	}
	return

f3::
{
msgbox, stopped
ExitApp
return
}