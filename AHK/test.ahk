pmsg 			:= ComObjCreate("CDO.Message")
pmsg.From 		:= """AHKUser"" <ariken12.nam@gmail.com>"
pmsg.To 		:= "ari.nam@mail.ru"
pmsg.BCC 		:= ""   ; Blind Carbon Copy, Invisable for all, same syntax as CC

pmsg.Subject 	:= "Message_Subject"

pmsg.TextBody 	:= "Message_Body"

fields := Object()
fields.smtpserver   := "smtp.gmail.com" ; specify your SMTP server
fields.smtpserverport     := 465 ; 25
fields.smtpusessl      := True ; False
fields.sendusing     := 2   ; cdoSendUsingPort
fields.smtpauthenticate     := 1   ; cdoBasic
fields.sendusername := "ariken12.nam@gmail.com"
fields.sendpassword := "1q92w83e74r65t"
fields.smtpconnectiontimeout := 60
schema := "http://schemas.microsoft.com/cdo/configuration/"


pfld :=   pmsg.Configuration.Fields

For field,value in fields
	pfld.Item(schema . field) := value
pfld.Update()

Loop, Parse, sAttach, |, %A_Space%%A_Tab%pmsg.AddAttachment(A_LoopField)
pmsg.Send()
