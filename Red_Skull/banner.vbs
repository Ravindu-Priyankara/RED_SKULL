Set Sapi =Wscript.CreateObject("SAPI.SpVoice")
    dim str
    if hour(time) < 12 then
    Sapi.speak "Good Morning RED SKULL User. "
    else
    if hour(time) > 12 then
    if hour(time) > 16 then
    Sapi.speak "Good evening RED SKULL user "
    else
    Sapi.speak "Good afternoon RED SKULL user "
    end if
    end if
    end if
 Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
    Sapi.speak "The current time is"
if hour(time) >12 then
    Sapi.speak hour(time)-12
    else
    if hour(time) = 0 then
    Sapi.speak "12"
    else
    Sapi.speak hour(time)
    end if
    end if
if minute(time) < 10 then
    Sapi.speak "o"
    if minute(time) < 1 then
    Sapi.speak "clock"
    else
    Sapi.speak minute(time)
    end if
    else
    Sapi.speak minute(time)
    end if
if hour(time) > 12 then
    Sapi.speak "P.M."
    else
    if hour(time) = 0 then
    if minute(time) = 0 then
    Sapi.speak "Midnight"
    else
    Sapi.speak "A.M."
    end if
    else
    if hour(time) = 12 then
    if minute(time) = 0 then
    Sapi.speak "Noon"
    else
    Sapi.speak "P.M."
    end if
    else
    Sapi.speak "A.M."
    end if
    end if
    end if 
Dim msg,sapi
Set sapi = createObject("sapi.spvoice")
Set sapi.Voice = sapi.getVoices.Item(1)
sapi.Speak "Red skull is a powerfull active directery recorn tool. This programme was written by Ravindu Priyankara.  "
sapi.Speak "Thanks for using my Tool"
