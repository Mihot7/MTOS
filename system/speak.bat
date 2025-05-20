rem To nigdy nie działało, i nigdy nie będzie :(
echo dim speechobject>speak.vbs
echo set speechobject=createobject("sapi.spvoice")>>speak.vbs
echo speechobject.speak %1>>speak.vbs
call speak.vbs
del speak.vbs /q
