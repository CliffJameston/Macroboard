#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

; This all *should* work.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Author: Taran Van Hemert

; HELLO, people who want info about making a second keyboard, using LUAmacros!

; Here's my LTT video about how I use the 2nd keyboard with LuaMacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Featuring Contributions and Organization from Cliff Jameston
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;-------------2ND KEYBOARD USING LUAMACROS-----------------

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
FileRead, key, keypressed.txt ; <-- If you have this file located in a different folder from keypressed.txt, you'll need to include the actual path to keypressed.txt here.
; tippy(key) ; This function will just launch a quick tooltip that shows you what key you pressed. Optional, included for debugging.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~             Alphanumeric Keys             ~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If (key = "a")
{
	; Code goes here
}
else if (key = "b")
{
	; Code goes here
}
else if (key = "c")
{
	; Code goes here
}
else if (key = "d")
{
	; Code goes here
}
else if (key = "e")
{
	; Code goes here
}
else if (key = "f")
{
	; Code goes here
}
else if (key = "g")
{
	; Code goes here
}
else if (key = "h")
{
	; Code goes here
}
else if (key = "i")
{
	; Code goes here
}
else if (key = "j")
{
	; Code goes here
}
else if (key = "k")
{
	; Code goes here
}
else if (key = "l")
{
	; Code goes here
}
else if (key = "m")
{
	; Code goes here
}
else if (key = "n")
{
	; Code goes here
}
else if (key = "o")
{
	; Code goes here
}
else if (key = "p")
{
	; Code goes here
}
else if (key = "q")
{
	; Code goes here
}
else if (key = "r")
{
	; Code goes here
}
else if (key = "s")
{
	; Code goes here
}
else if (key = "t")
{
	; Code goes here
}
else if (key = "u")
{
	; Code goes here
}
else if (key = "v")
{
	; Code goes here
}
else if (key = "w")
{
	; Code goes here
}
else if (key = "x")
{
	; Code goes here
}
else if (key = "y")
{
	; Code goes here
}
else if (key = "z")
{
	; Code goes here
}

else if (key = "0")
{
	; Code goes here
}
else if (key = "1")
{
	; Code goes here
}
else if (key = "2")
{
	; Code goes here
}
else if (key = "3")
{
	; Code goes here
}
else if (key = "4")
{
	; Code goes here
}
else if (key = "5")
{
	; Code goes here
}
else if (key = "6")
{
	; Code goes here
}
else if (key = "7")
{
	; Code goes here
}
else if (key = "8")
{
	; Code goes here
}
else if (key = "9")
{
	; Code goes here
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~               Function Keys               ~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

else if (key = "F1")
{
	; Code goes here
}
else if (key = "F2")
{
	; Code goes here
}
else if (key = "F3")
{
	; Code goes here
}
else if (key = "F4")
{
	; Code goes here
}
else if (key = "F5")
{
	; Code goes here
}
else if (key = "F6")
{
	; Code goes here
}
else if (key = "F7")
{
	; Code goes here
}
else if (key = "F8")
{
	; Code goes here
}
else if (key = "F9")
{
	; Code goes here
}
else if (key = "F10")
{
	; Code goes here
}
else if (key = "F11")
{
	; Code goes here
}
else if (key = "F12")
{
	; Code goes here
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~                Numpad Keys                ~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

else if (key = "NumPad0")
{
	SendInput, {Enter}/sit4{Enter}
}
else if (key = "NumPad1")
{
	; Code goes here
}
else if (key = "NumPad2")
{
	; Code goes here
}
else if (key = "NumPad3")
{
	; Code goes here
}
else if (key = "NumPad4")
{
	; Code goes here
}
else if (key = "NumPad5")
{
	FormatTime, localTime,, yyyy-MM-dd
	InputBox, titleVar, Article Title, Enter the title of the article. 
	StringLower, saveTitleVar, titleVar
	StringReplace, saveTitleVar, saveTitleVar, %A_Space%, -, 1
	saveTitleVar := localTime . "-" . saveTitleVar . ".md"
	; Print info to file
	SendInput ` 
	(
---
title: "%titleVar%"
date: "%localTime%"
---


	)
	; Open save dialog with generated name
	SendInput, ^S
	SendInput, %saveTitleVar%
}
else if (key = "NumPad6")
{
	; Code goes here
}
else if (key = "NumPad7")
{
	; Code goes here
}
else if (key = "NumPad8")
{
	; Code goes here
}
else if (key = "NumPad9")
{
	SendInput, {Enter}/leanbackcoin{Enter}
}

else if (key = "NumPadAdd")
{
	; Code goes here
}
else if (key = "NumPadSub")
{
	Reload
}
else if (key = "NumPadMult")
{
	; Code goes here
}
else if (key = "NumPadDiv")
{
	; Code goes here
}
else if (key = "NumPadDel")
{
	; Code goes here
}
else if (key = "NumPadDot") 	; Alias of NumPadDel, added to make my specific numpad work.
{
	; Code goes here
}
else if (key = "NumPadEnter")	; NumPadEnter actually generates the same keycode as Enter (13). Use Enter for macro.Alternatively, it might be 176? Maybe? Check this!
{
	; Code goes here
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~            Miscellaneous Keys             ~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

else if (key = "`")
{
	; Code goes here
}
else if (key = "tab")
{
	; Code goes here
}

else if (key = "minus")
{
	; Code goes here
}
else if (key = "equals")
{
	; Code goes here
}

else if (key = "leftbracket")
{
	; Code goes here
}
else if (key = "rightbracket")
{
	; Code goes here
}
else if (key = "backslash")
{
	; Code goes here
}

else if (key = "semicolon")
{
	; Code goes here
}
else if (key = "singlequote")
{
	; Code goes here
}

else if (key = "comma")
{
	; Code goes here
}
else if (key = "period")
{
	; Code goes here
}
else if (key = "slash")
{
	; Code goes here
}

else if (key = "insert")
{
	; Code goes here
}
else if (key = "home")
{
	; Code goes here
}
else if (key = "pageup")
{
	; Code goes here
}

else if (key = "delete")
{
	; Code goes here
}
else if (key = "end")
{
	; Code goes here
}
else if (key = "pagedown")
{
	; Code goes here
}

else if (key = "up")
{
	; Code goes here
}
else if (key = "down")
{
	; Code goes here
}
else if (key = "left")
{
	; Code goes here
}
else if (key = "right")
{
	; Code goes here
}

else if (key = "space")
{
	; Code goes here
}

else if (key = "enter")
{
	; Code goes here
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~~~~~~~~~~                 Modifiers                 ~~~~~~~~~~
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Used as individual keypresses, not as modifiers, I think. Note to self: test some day.

else if (key = "rShift")
{
	; Code goes here
}
else if (key = "lShift")
{
	; Code goes here
}

else if (key = "rCtrl")
{
	; Code goes here
}
else if (key = "lCtrl")
{
	; Code goes here
}

else if (key = "rAlt")
{
	; Code goes here
}
else if (key = "lAlt")
{
	; Code goes here
}

else if (key = "lWin")
{
	; Code goes here
}
else if (key = "rWin")
{
	; Code goes here
}

Return ;from LuaMacros F24

; THE BLOCK OF CODE ABOVE is the original, simple LuaMacros-dependent script.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Temporary Tooltips

Tippy(tipsHere, wait:=500)
{
ToolTip, %tipsHere%
SetTimer, noTip, %wait% ; in 1/2 second by default, remove the tooltip
}
noTip:
	ToolTip
	; removes the tooltip
return