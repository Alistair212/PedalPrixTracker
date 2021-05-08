;Code Created by Alistair
; me@alistairs.space

;Declare General Variables
Global $WaitTimeSEC, $WaitTimeMS, $NumOfCars, $LiveScorePageTitle, $loop
Global $Car1Name, $Car2Name, $Car3Name, $Car4Name
Global $Car1NameLEN, $Car2NameLEN, $Car3NameLEN, $Car4NameLEN

Global $LiveScorePageTitle = InputBox("Pedal Tracker", "What is the exact name of the window? can be found by hovering over the taskbar icon Internet Explorer is recommended", "event results – Australian HPV Super Series - Internet Explorer", "")

;Ask user to input name for each car, Replace last word with the default for the program
Global $Car1Name = InputBox("Pedal Tracker", "Enter car 1's name (exact) 1/4", "CarName1", "")
Global $Car2Name = InputBox("Pedal Tracker", "Enter car 2's name (exact) 2/4", "CarName2", "")
Global $Car3Name = InputBox("Pedal Tracker", "Enter car 3's name (exact) 3/4", "CarName3", "")
Global $Car4Name = InputBox("Pedal Tracker", "Enter car 4's name (exact) 4/4", "CarName4", "")

;Get length of each car name so that correct amount of backspaces can be sent
Global $Car1NameLEN = StringLen ($Car1Name)
Global $Car2NameLEN = StringLen ($Car2Name)
Global $Car3NameLEN = StringLen ($Car3Name)
Global $Car4NameLEN = StringLen ($Car4Name)

;Ask user for delay between each car, then multiply by 1000 to get into millisecond form
Global $WaitTimeSEC = InputBox("Pedal Tracker", "How long before team name is changed? (Seconds)", "5", "")
$WaitTimeMS = $WaitTimeSEC * 1000


;Opens Notepad and sends instructions and confirms vars
Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Send("Welcome To Pedal Tracker.{ENTER}")
Send("This Program Was Created By Alistair - me@alistairs.space{ENTER}")
Send("For Seaview - Pedal Prix Team.{ENTER}")
Send("{ENTER}")
Send("{ENTER}")
Send("To Exit The Program Navigate To The Tool Bar,{ENTER}")
Send("Find Pedal Tracker and Click on the icon{ENTER}")
Send("The Script Should Be Paused and you will{ENTER}")
Send("Have the option to terminate the script.{ENTER}")
Send("{ENTER}")
Send("{ENTER}")
Send("This Program Will Find The Following Cars:{ENTER}")
Send("Car 1:")
Send($Car1Name)
Send("{ENTER}")
Send("Car 2:")
Send($Car2Name)
Send("{ENTER}")
Send("Car 3:")
Send($Car3Name)
Send("{ENTER}")
Send("Car 4:")
Send($Car4Name)
Send("{ENTER}")
Send("{ENTER}")
Send("The Program Will Wait ")
Send($WaitTimeSEC)
Send(" seconds before switching to the next car{ENTER}")
Send("{ENTER}")
Send("{ENTER}")
Send("The Program Will Automaticly Start when the following window is opened: ")
Send($LiveScorePageTitle)
Send("{ENTER}")
Send("{ENTER}")
Send("Either find the link for the Live Scoring or use the following link in internet explorer")
Send("{ENTER}")
Send("http://www.ahpvss.com/event-results/")

;Waits for live scoring page to be open before loop starts
Sleep(500)
WinWaitActive($LiveScorePageTitle)
Sleep(500)
Send("^f")
Sleep(500)

;Loop
Local $loop = 0
Do
WinWaitActive($LiveScorePageTitle)
Send("^f")
Send($Car1Name)
Sleep($WaitTimeMS)
WinWaitActive($LiveScorePageTitle)
Send("^f")
Send("+{BACKSPACE " & $Car1NameLEN & "}")

WinWaitActive($LiveScorePageTitle)
Send("^f")
Send($Car2Name)
Sleep($WaitTimeMS)
WinWaitActive($LiveScorePageTitle)
Send("^f")
Send("+{BACKSPACE " & $Car2NameLEN & "}")

WinWaitActive($LiveScorePageTitle)
Send("^f")
Send($Car3Name)
Sleep($WaitTimeMS)
WinWaitActive($LiveScorePageTitle)
Send("^f")
Send("+{BACKSPACE " & $Car3NameLEN & "}")

WinWaitActive($LiveScorePageTitle)
Send("^f")
Send($Car4Name)
Sleep($WaitTimeMS)
WinWaitActive($LiveScorePageTitle)
Send("^f")
Send("+{BACKSPACE " & $Car4NameLEN & "}")

Until $loop = 1
