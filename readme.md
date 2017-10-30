# 2nd-keyboard

Fork of [TaranVH](https://github.com/TaranVH/2nd-keyboard/tree/master/LUAMACROS)'s original LuaMacros code, since I don't want to use Intercept.

A lot of the code is reorganized and genericized, but <i>should</i> work the same as his.

NOTE: CURRENTLY UNTESTED, will do that soon ish

Additional note: there are two .AHK script files in the "Scripts" folder. Only one is needed. Feel free to work off of "2nd-keyboard-commands-blank.ahk".

A quickstart guide for using a second keyboard purely for macros on Windows.

---

## Getting started

[Watch the video](https://youtu.be/Arn8ExQ2Gjg?t=362) first, then take a look at the instructions below.

1. Ensure that both your keyboards are plugged in.
2. Download and install [LuaMacros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794) and [AutoHotkey](https://autohotkey.com/).
3. Download `2nd-keyboard-commands-blank.ahk`,  `send-keypresses-to-ahk.lua`, and `keypressed.txt` from this github repository, by clicking on the RAW button for each, and then selecting FILE > SAVE AS. Save them all into the same folder. OR just download the zip file and extract it. 
4. Open `send-keypresses-to-ahk.lua` using LuaMacros.exe, which will allow you to view and modify the code. You'll need to change the file path of `keypressed.txt` at least.
5. Click on the "play" arrow button. An identification window should pop up. Press any key on your 2nd keyboard, and LuaMacros will identify that device as your 2nd keyboard.
6. Typing on your 2nd keyboard should no longer work, since LuaMacros is now intercepting and blocking those keystrokes.
7. Press the spacebar on your second keyboard, then check `keypressed.txt` to see if it now contains the string "space". If so, you got it working!
8. Right-click on `2nd-keyboard-commands-blank.ahk` and open it in a text editor like notepad++.
9. Scroll down and find and change the filepath `C:\PATH\TO\keypressed.txt` to the correct location of `keypressed.txt` on your own computer.

10. `2nd-keyboard-commands-blank.ahk` has no functions initially. You can write your own or copy/paste some from my `2nd-keyboard-commands-custom.ahk`, but you'll probably need to modify them to fit your own system and needs.


### Don't Panic!

---

## References

* [DIY 87-Key Macro Keyboard](https://www.youtube.com/watch?v=Arn8ExQ2Gjg) by Taran of LinusTechTips

* [The Art of the Bodge](https://www.youtube.com/watch?v=lIFE7h3m40U) by Tom Scott

*[TaranVH's Original GitHub Repo](https://github.com/TaranVH/2nd-keyboard/tree/master/LUAMACROS)

* [LuaMacros](https://github.com/stevedonovan/LuaMacro)

* [AuthoHotkey](https://github.com/AutoHotkey/AutoHotkey)
