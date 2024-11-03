; ================================ CREATE GUI =================================
myGui := Gui()
myGui.SetFont("s14", "Verdana")
myGui.Title := "easyPrint"

myGui.AddText("xp+20 yp+30 Section", "Initials:")
myGui.AddEdit("ys w40 limit2", "--")

myGui.Show("NA w300 h250")

; =================================== MISC ====================================
Setup:
	{
		#Requires AutoHotkey v2.0+
		#SingleInstance force
	}