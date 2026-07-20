Function Main()

LOCAL nNum1:= 0
LOCAL nNum2:= 0

INPUT "Digite o primeiro numero: " TO nNum1
INPUT "Digite o segundo numero: " TO nNum2

if nNum1 == nNum2
    QOut("Os números são iguais.")
    QOut("Número 1:" + AllTrim(Str(nNum1)))
    QOut("Número 2:" + AllTrim(Str(nNum2)))
    
elseif nNum1 > nNum2
    QOut("O número 1 é o maior:" + AllTrim(Str(nNum1)))
    QOut("O número 2 é o menor:" + AllTrim(Str(nNum2)))
else
    QOut("O número 2 é o maior:" + AllTrim(Str(nNum2)))
    QOut("O número 1 é o menor:" + AllTrim(Str(nNum1)))
endif

Return NIL