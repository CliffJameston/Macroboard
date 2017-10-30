-- get luamacros HERE: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
-- plug in your 2nd keyboard, load this script into LUAmacros, and press the triangle PLAY button.
-- Then, press any key on that keyboard to assign logical name ('MACROS') to macro keyboard
-- When done this way, you have to reassign the name to your 2nd keyboard every time you open LUAmacros, using the play button located above.
-- There may be a better, more permanent solution, but I don't know it.
lmc_assign_keyboard('MACROS');

sendToAHK = function (key)
      --print('It was assigned string:    ' .. key)
      local file = io.open("C:\\PATH\\TO\\keypressed.txt", "w") -- writing this string to a text file on disk is probably NOT the best method. Feel free to program something better!
      --Make sure to substitute the path that leads to your own "keypressed.txt" file, using the double backslashes.
	  --print("we are inside the text file")
      file:write(key)
      file:flush() --"flush" means "save"
      file:close()
      lmc_send_keys('{F24}')  -- This presses F24. Using the F24 key to trigger AutoHotKey is probably NOT the best method. Feel free to program something better!
end

local config = {

	-- Alphanumeric Keys

	[string.byte('A')] = "a",
	[string.byte('B')] = "b",
	[string.byte('C')] = "c",
	[string.byte('D')] = "d",
	[string.byte('E')] = "e",
	[string.byte('F')] = "f",
	[string.byte('G')] = "g",
	[string.byte('H')] = "h",
	[string.byte('I')] = "i",
	[string.byte('J')] = "j",
	[string.byte('K')] = "k",
	[string.byte('L')] = "l",
	[string.byte('M')] = "m",
	[string.byte('N')] = "n",
	[string.byte('O')] = "o",
	[string.byte('P')] = "p",
	[string.byte('Q')] = "q",
	[string.byte('R')] = "r",
	[string.byte('S')] = "s",
	[string.byte('T')] = "t",
	[string.byte('U')] = "u",
	[string.byte('V')] = "v",
	[string.byte('W')] = "w",
	[string.byte('X')] = "x",
	[string.byte('Y')] = "y",
	[string.byte('Z')] = "z",

    [string.byte('0')] = "0",
	[string.byte('1')] = "1",
	[string.byte('2')] = "2",
	[string.byte('3')] = "3",
	[string.byte('4')] = "4",
	[string.byte('5')] = "5",
    [string.byte('6')] = "6",
    [string.byte('7')] = "7",
    [string.byte('8')] = "8",
    [string.byte('9')] = "9",

    -- Function Keys

	[112] = "F1",
	[113] = "F2",
	[114] = "F3",
	[115] = "F4",
	[116] = "F5",
	[117] = "F6",
	[118] = "F7",
	[119] = "F8",
	[120] = "F9",
	[121] = "F10",
	[122] = "F11",
	[123] = "F12",

	-- Numpad Keys

	[96]  = "NumPad0",
	[97]  = "NumPad1",
	[98]  = "NumPad2",
	[99]  = "NumPad3",
	[100] = "NumPad4",
	[101] = "NumPad5",
	[102] = "NumPad6",
	[103] = "NumPad7",
	[104] = "NumPad8",
	[105] = "NumPad9",

	[106] = "NumPadMult",
    [107] = "NumPadAdd",
    [108] = "NumPadSeparator",	--What is this?
	[109] = "NumPadSub",
    [110] = "NumPadDel",
	[111] = "NumPadDiv",
    [144] = "NumLock",	--probably it is best to avoid this key. I keep numlock ON, or it has unexpected effects

    -- Miscellaneous Keys

    [192] = "`",	--this is the tilde key just before the number row
    [9]   = "tab",

	[189] = "minus",
	[187] = "equals",

	[219] = "leftbracket",
	[221] = "rightbracket",
	[220] = "backslash",

	[186] = "semicolon",
	[222] = "singlequote",

	[188] = "comma",
	[190] = "period",
	[191] = "slash",

	[45]  = "insert",
	[36]  = "home",
	[33]  = "pageup",

	[46]  = "delete",
	[35]  = "end",
	[34]  = "pagedown",

	[38]  = "up",
	[40]  = "down",
	[37]  = "left",
	[39]  = "right",

	[32]  = "space",
	[13]  = "enter",
	[27]  = "escape",
	[8]   = "backspace",

	-- Modifiers 
		-- I am not sure if these are the correct keycodes to detect each modifier as a standalone keypress
		-- rather than as a modifier for another keypress, so this section should be regarded as BUGGY.

	[161]  = "rShift",
	[160]  = "lShift",
	[163]  = "rCtrl",
	[162]  = "lCtrl",
    [165]  = "rAlt",
    [164]  = "lAlt",
    [92]  = "rWin",
    [91]  = "lWin",

	--[255] = "printscreen" --these keys do not work (I'll just take Taran's word on this.)
}

-- define callback for whole device
lmc_set_handler('MACROS', function(button, direction)
	if (direction == 1) then return end  -- "ignore down." -- I believe this also has the effect of neutralizing the modifier keys, unfortunately. Not optimal.

	if type(config[button]) == "string" then
                print(' ')
                print('Your key ID number is:   ' .. button)
				print('It was assigned string:    ' .. config[button])
				sendToAHK(config[button])
	else
                print(' ')
                print('Not yet assigned: ' .. button)
	end
end)
