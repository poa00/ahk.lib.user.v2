#Include <Utils\Win>

class AutoHotkey {

	static path := A_ProgramFiles "\AutoHotkey"
	static currVersion := this.path "\v2"
	static processExe := A_AhkPath
	static exeTitle := "ahk_exe " this.processExe

}