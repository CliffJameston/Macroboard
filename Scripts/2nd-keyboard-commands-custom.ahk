#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

; ASSUME THIS IS BETA CODE

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Author: Taran Van Hemert

; HELLO, poeple who want info about making a second keyboard, using LUAmacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Featuring Contributions and Organization from Cliff Jameston
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;-------------2ND KEYBOARD USING LUAMACROS-----------------

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
FileRead, key, keypressed.txt ; <-- EDIT THIS PATH TO FIND keypressed.txt
tippy(key) ; this function will just launch a quick tooltip that shows you what key you pressed. Optional, included for debugging.

; Alphanumeric Keys

If (key = "a")
preset("ahk_a_macro")
else if (key = "b")
preset("ahk_b_macro")
else if (key = "c")
preset("ahk_c_macro")
else if (key = "d")
preset("ahk_d_macro")
else if (key = "e")
preset("ahk_e_macro")
else if (key = "f")
preset("ahk_f_macro")
else if (key = "g")
preset("ahk_g_macro")
else if (key = "h")
preset("ahk_h_macro")
else if (key = "i")
preset("ahk_i_macro")
else if (key = "j")
preset("ahk_j_macro")
else if (key = "k")
preset("ahk_k_macro")
else if (key = "l")
preset("ahk_l_macro")
else if (key = "m")
preset("ahk_m_macro")
else if (key = "n")
preset("ahk_n_macro")
else if (key = "o")
preset("ahk_o_macro")
else if (key = "p")
preset("ahk_p_macro")
else if (key = "q")
preset("ahk_q_macro")
else if (key = "r")
preset("ahk_r_macro")
else if (key = "s")
preset("ahk_s_macro")
else if (key = "t")
preset("ahk_t_macro")
else if (key = "u")
preset("ahk_u_macro")
else if (key = "v")
preset("ahk_v_macro")
else if (key = "w")
preset("ahk_w_macro")
else if (key = "x")
preset("ahk_x_macro")
else if (key = "y")
preset("ahk_y_macro")
else if (key = "z")
preset("ahk_z_macro")

else if (key = "0")
preset("ahk_0_macro")
else if (key = "1")
preset("ahk_1_macro")
else if (key = "2")
preset("ahk_2_macro")
else if (key = "3")
preset("ahk_3_macro")
else if (key = "4")
preset("ahk_4_macro")
else if (key = "5")
preset("ahk_5_macro")
else if (key = "6")
preset("ahk_6_macro")
else if (key = "7")
preset("ahk_7_macro")
else if (key = "8")
preset("ahk_8_macro")
else if (key = "9")
preset("ahk_9_macro")

; Function Keys

else if (key = "F1")
preset("ahk_F1_macro")
else if (key = "F2")
preset("ahk_F2_macro")
else if (key = "F3")
preset("ahk_F3_macro")
else if (key = "F4")
preset("ahk_F4_macro")
else if (key = "F5")
preset("ahk_F5_macro")
else if (key = "F6")
preset("ahk_F6_macro")
else if (key = "F7")
preset("ahk_F7_macro")
else if (key = "F8")
preset("ahk_F8_macro")
else if (key = "F9")
preset("ahk_F9_macro")
else if (key = "F10")
preset("ahk_F10_macro")
else if (key = "F11")
preset("ahk_F11_macro")
else if (key = "F12")
preset("ahk_F12_macro")

; Numpad Keys

else if (key = "NumPad0")
preset("ahk_NumPad0_macro")
else if (key = "NumPad1")
preset("ahk_NumPad1_macro")
else if (key = "NumPad2")
preset("ahk_NumPad2_macro")
else if (key = "NumPad3")
preset("ahk_NumPad3_macro")
else if (key = "NumPad4")
preset("ahk_NumPad4_macro")
else if (key = "NumPad5")
preset("ahk_NumPad5_macro")
else if (key = "NumPad6")
preset("ahk_NumPad6_macro")
else if (key = "NumPad7")
preset("ahk_NumPad7_macro")
else if (key = "NumPad8")
preset("ahk_NumPad8_macro")
else if (key = "NumPad9")
preset("ahk_NumPad9_macro")

else if (key = "NumPadAdd")
preset("ahk_NumPadAdd_macro")
else if (key = "NumPadSub")
preset("ahk_NumPadSub_macro")
else if (key = "NumPadMult")
preset("ahk_NumPadMult_macro")
else if (key = "NumPadDiv")
preset("ahk_NumPadDiv_macro")
else if (key = "NumPadDel")
preset("ahk_NumPadDel_macro")
else if (key = "NumPadDot") ; Alias of NumPadDel, added to make my specific numpad work.
preset("ahk_NumPadDot_macro")
; else if (key = "NumPadEnter")		NumPadEnter actually generates the same keycode as Enter (13). Use Enter for macro.
; preset("ahk_NumPadEnter_macro")	Alternatively, it might be 176? Maybe? Check this!

; Miscellaneous Keys

else if (key = "`")
preset("ahk_`_macro")
else if (key = "tab")
preset("ahk_tab_macro")

else if (key = "minus")
preset("ahk_minus_macro")
else if (key = "equals")
preset("ahk_equals_macro")

else if (key = "leftbracket")
preset("ahk_leftbracket_macro")
else if (key = "rightbracket")
preset("ahk_rightbracket_macro")
else if (key = "backslash")
preset("ahk_backslash_macro")

else if (key = "semicolon")
preset("ahk_semicolon_macro")
else if (key = "singlequote")
preset("ahk_singlequote_macro")

else if (key = "comma")
preset("ahk_comma_macro")
else if (key = "period")
preset("ahk_period_macro")
else if (key = "slash")
preset("ahk_slash_macro")


else if (key = "insert")
preset("ahk_insert_macro")
else if (key = "home")
preset("ahk_home_macro")
else if (key = "pageup")
preset("ahk_pageup_macro")

else if (key = "delete")
preset("ahk_delete_macro")
else if (key = "end")
preset("ahk_end_macro")
else if (key = "pagedown")
preset("ahk_pagedown_macro")

else if (key = "up")
preset("ahk_up_macro")
else if (key = "down")
preset("ahk_down_macro")
else if (key = "left")
preset("ahk_left_macro")
else if (key = "right")
preset("ahk_right_macro")

else if (key = "space")
preset("ahk_space_macro")


else if (key = "enter")
preset("ahk_enter_macro")

; Modifiers - Used as individual keypresses, not as modifiers, I think. Note to self: test some day.

else if (key = "rShift")
preset("ahk_rShift_macro")
else if (key = "lShift")
preset("ahk_lShift_macro")

else if (key = "rCtrl")
preset("ahk_rCtrl_macro")
else if (key = "lCtrl")
preset("ahk_lCtrl_macro")

else if (key = "rAlt")
preset("ahk_rAlt_macro")
else if (key = "lAlt")
preset("ahk_lAlt_macro")

else if (key = "lWin")
preset("ahk_lWin_macro")
else if (key = "rWin")
preset("ahk_rWin_macro")


Return ;from luamacros F24

; THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.

;-----

; temporary tooltip maker

Tippy(tipsHere, wait:=500)
{
ToolTip, %tipsHere%
SetTimer, noTip, %wait% ; in 1/2 second by default, remove the tooltip
}
noTip:
	ToolTip
	; removes the tooltip
return

; /temporary tooltip maker

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; ALL THE CODE BELOW CAN BE THE ACTUAL FUNCTIONS THAT YOU WANT TO CALL

; Find the corresponding else if statement here to code for specific keypress.

; Yes, it is possible to just write functions in the block of code above listing all the keys.
; I separated them for clarity's sake, even though it does make the code significantly longer.

; In the long term, it might be better to just live with the chaos and code in the initial list,
; but for now, I'm gonna try and stick with this layout, performance willing.

preset(parameter){
If (parameter = "ahk_a_macro")
	{
		return
	}
else if (parameter = "ahk_b_macro")
	{
		return
	}
else if (parameter = "ahk_c_macro")
	{
		return
	}
else if (parameter = "ahk_d_macro")
	{
		return
	}
else if (parameter = "ahk_e_macro")
	{
		return
	}
else if (parameter = "ahk_f_macro")
	{
		return
	}
else if (parameter = "ahk_g_macro")
	{
		return
	}
else if (parameter = "ahk_h_macro")
	{
		return
	}
else if (parameter = "ahk_i_macro")
	{
		return
	}
else if (parameter = "ahk_j_macro")
	{
		return
	}
else if (parameter = "ahk_k_macro")
	{
		return
	}
else if (parameter = "ahk_l_macro")
	{
		return
	}
else if (parameter = "ahk_m_macro")
	{
		return
	}
else if (parameter = "ahk_n_macro")
	{
		return
	}
else if (parameter = "ahk_o_macro")
	{
		return
	}
else if (parameter = "ahk_p_macro")
	{
		return
	}
else if (parameter = "ahk_q_macro")
	{
		return
	}
else if (parameter = "ahk_r_macro")
	{
		return
	}
else if (parameter = "ahk_s_macro")
	{
		return
	}
else if (parameter = "ahk_t_macro")
	{
		return
	}
else if (parameter = "ahk_u_macro")
	{
		return
	}
else if (parameter = "ahk_v_macro")
	{
		return
	}
else if (parameter = "ahk_w_macro")
	{
		return
	}
else if (parameter = "ahk_x_macro")
	{
		return
	}
else if (parameter = "ahk_y_macro")
	{
		return
	}
else if (parameter = "ahk_z_macro")
	{
		return
	}

else if (parameter = "ahk_0_macro")
	{
		return
	}
else if (parameter = "ahk_1_macro")
	{
		return
	}
else if (parameter = "ahk_2_macro")
	{
		return
	}
else if (parameter = "ahk_3_macro")
	{
		return
	}
else if (parameter = "ahk_4_macro")
	{
		return
	}
else if (parameter = "ahk_5_macro")
	{
		return
	}
else if (parameter = "ahk_6_macro")
	{
		return
	}
else if (parameter = "ahk_7_macro")
	{
		return
	}
else if (parameter = "ahk_8_macro")
	{
		return
	}
else if (parameter = "ahk_9_macro")
	{
		return
	}

else if (parameter = "ahk_F1_macro")
	{
		return
	}
else if (parameter = "ahk_F2_macro")
	{
		return
	}
else if (parameter = "ahk_F3_macro")
	{
		return
	}
else if (parameter = "ahk_F4_macro")
	{
		return
	}
else if (parameter = "ahk_F5_macro")
	{
		return
	}
else if (parameter = "ahk_F6_macro")
	{
		return
	}
else if (parameter = "ahk_F7_macro")
	{
		return
	}
else if (parameter = "ahk_F8_macro")
	{
		return
	}
else if (parameter = "ahk_F9_macro")
	{
		return
	}
else if (parameter = "ahk_F10_macro")
	{
		return
	}
else if (parameter = "ahk_F11_macro")
	{
		return
	}
else if (parameter = "ahk_F12_macro")
	{
		return
	}

else if (parameter = "ahk_NumPad0_macro")
	{
		FormatTime, CurrentDateTime,, yyyy-MM-dd
		SendInput %CurrentDateTime%
		return
	}
else if (parameter = "ahk_NumPad1_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad2_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad3_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad4_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad5_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad6_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad7_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad8_macro")
	{
		return
	}
else if (parameter = "ahk_NumPad9_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadAdd_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadSub_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadMult_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadDiv_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadDel_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadDot_macro")
	{
		return
	}
else if (parameter = "ahk_NumPadEnter_macro")
	{
		return
	}

else if (parameter = "ahk_`_macro")
	{
		return
	}
else if (parameter = "ahk_tab_macro")
	{
		return
	}
else if (parameter = "ahk_minus_macro")
	{
		return
	}
else if (parameter = "ahk_equals_macro")
	{
		return
	}
else if (parameter = "ahk_leftbracket_macro")
	{
		return
	}
else if (parameter = "ahk_rightbracket_macro")
	{
		return
	}
else if (parameter = "ahk_backslash_macro")
	{
		return
	}
else if (parameter = "ahk_semicolon_macro")
	{
		return
	}
else if (parameter = "ahk_singlequote_macro")
	{
		return
	}
else if (parameter = "ahk_comma_macro")
	{
		return
	}
else if (parameter = "ahk_period_macro")
	{
		return
	}
else if (parameter = "ahk_slash_macro")
	{
		return
	}

else if (parameter = "ahk_insert_macro")
	{
		return
	}
else if (parameter = "ahk_home_macro")
	{
		return
	}
else if (parameter = "ahk_pageup_macro")
	{
		return
	}
else if (parameter = "ahk_delete_macro")
	{
		return
	}
else if (parameter = "ahk_end_macro")
	{
		return
	}
else if (parameter = "ahk_pagedown_macro")
	{
		return
	}

else if (parameter = "ahk_up_macro")
	{
		return
	}
else if (parameter = "ahk_down_macro")
	{
		return
	}
else if (parameter = "ahk_left_macro")
	{
		return
	}
else if (parameter = "ahk_right_macro")
	{
		return
	}

else if (parameter = "ahk_space_macro")
	{
		return
	}
else if (parameter = "ahk_enter_macro")
	{
		return
	}

else if (parameter = "ahk_rShift_macro")
	{
		return
	}
else if (parameter = "ahk_lShift_macro")
	{
		return
	}
else if (parameter = "ahk_rCtrl_macro")
	{
		return
	}
else if (parameter = "ahk_lCtrl_macro")
	{
		return
	}
else if (parameter = "ahk_rAlt_macro")
	{
		return
	}
else if (parameter = "ahk_lAlt_macro")
	{
		return
	}
else if (parameter = "ahk_lWin_macro")
	{
		return
	}
else if (parameter = "ahk_rWin_macro")
	{
		return
	}
}