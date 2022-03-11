CoordMode, Mouse, Screen

findBadFiles:
    While, True {
        FileDelete, C:\Users\%A_UserName%\Downloads\*.exe
        /* other filetypes to delete:
        FileDelete, C:\Users\%A_UserName%\Downloads\*.jar
        */
        /*
        FileDelete, C:\Users\%A_UserName%\Downloads\*.7zip
        */
        /*
        FileDelete, C:\Users\%A_UserName%\Downloads\*.rar
        */
         /*
        FileDelete, C:\Users\%A_UserName%\Downloads\*.bat
        */
        Sleep, 2000
    }