findBadFiles:
    While, True {
        Loop Files, C:\Users\%A_UserName%\Downloads\*.exe, ;R  ; søk i subfoldere
        {
            If (A_LoopFileExt = "exe" || "EXE" || "Exe") {
                Gui,+AlwaysOnTop

                Gui, add, button, xm gDelete h200 w400 x300 y150 Center, Delete file %A_LoopFileFullPath%

                Gui, Color, FF0000

                Gui,Show,w1000 h500 Center, I won't go away
                SoundPlay, assets/sound.wav
                badFile := A_LoopFileFullPath
                return
            }
            Sleep, 2000
        }
    }

Delete:
    Gui, Destroy
    fileDelete, %badFile%
    Sleep, 5000
    Goto, findBadFiles
Return