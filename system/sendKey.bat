rem Tak, nadal używamy bibliotek z 2021 XD
@echo Set vb = CreateObject("WScript.Shell") > sendKey.vbs
@echo vb.Sendkeys %1 >> sendKey.vbs
@call sendKey.vbs
@del sendKey.vbs