#SingleInstance
$CapsLock::Ctrl ; replace caps lock with ctrl for when I forget my keyboard
#HotIf not WinActive("ahk_exe MobaXterm.exe")
+$Insert::^+v ; replace shift insert with ctrl-shift-v for 