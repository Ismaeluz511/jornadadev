Function Main()

LOCAL cString1 := "Harbour"
LOCAL cString2 := "Harb"

QOut("Se usar '=' :")
QOut(cString1 = cString2) // Exibe .T.

QOut("Se usar '==' :")
QOut(cString1 == cString2) // Exibe .F.

Return NIL