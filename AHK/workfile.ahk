#NoTrayIcon
FileRead, file, data.txt

main(file)

main(file){
FileSelectFolder, name
StringReplace, file1, file, asdfghjkl, %name%, 1
FileDelete, autoscrnsave.ahk
FileAppend, %file1%, autoscrnsave.ahk
}

