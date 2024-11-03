; ================================ CREATE GUI =================================
myGui := Gui()
myGui.SetFont("s14", "Verdana")
myGui.Title := "easyPrint"

myGui.AddText("xp+20 yp+30 Section", "Initials:")
initials := myGui.AddEdit("ys w40 limit2", "--")

myGui.AddButton("xs y+30 Section", "Show print queues").OnEvent("click", showPrintQueues)

myGui.Show("NA w300 h250")

; ================================ FUNCTIONS ==================================
showPrintQueues(*) {
	printerAndFaxesWindowCLSID := "{2227A280-3AEA-1069-A2DE-08002B30309D}"

	Run("Shell:::" . printerAndFaxesWindowCLSID, , "Min")
	if not WinWait("Printers - File Explorer", , 2)
		return MsgBox("error: couldn't open 'Printers' window", , "Iconx")
}


; ================================ SHORTCUTS ==================================
!numpad1:: SendInput initials.value . " P-01" . "+{enter}{enter}"
!numpad2:: SendInput initials.value . " P-02" . "+{enter}{enter}"
!numpad3:: SendInput initials.value . " P-03" . "+{enter}{enter}"
!numpad4:: SendInput initials.value . " P-04" . "+{enter}{enter}"
!numpad5:: SendInput initials.value . " P-05" . "+{enter}{enter}"
!numpad6:: SendInput initials.value . " P-06" . "+{enter}{enter}"
!numpad7:: SendInput initials.value . " P-07" . "+{enter}{enter}"
!numpad8:: SendInput initials.value . " P-08" . "+{enter}{enter}"
!numpad9:: SendInput initials.value . " P-09" . "+{enter}{enter}"
!numpad0:: SendInput initials.value . " P-10" . "+{enter}{enter}"

; =================================== MISC ====================================
Setup:
	{
		#Requires AutoHotkey v2.0+
		#SingleInstance force
		DetectHiddenWindows true
		SetTitleMatchMode 3
	}