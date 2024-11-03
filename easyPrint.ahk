; ================================ CREATE GUI =================================
myGui := Gui()
myGui.SetFont("s14", "Verdana")
myGui.Title := "easyPrint"

myGui.AddText("xp+20 yp+30 Section", "Initials:")
initials := myGui.AddEdit("ys w40 limit2", "--")

myGui.Show("NA w300 h250")

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
	}