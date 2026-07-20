Function Main()

LOCAL nNum := 0 
LOCAL nTotal := 0 
LOCAL nQuantidade := 0

While .T.

INPUT "Digite o número: " TO nNum

IF nNum == 0
Exit
ENDIF
        
nTotal += nNum
nQuantidade++
    
    QOut("Soma total dos valores: " + Alltrim(Str(nTotal, 10, 2)))
    QOut("Quantidade de todos valores somados: " + Alltrim(Str(nQuantidade, 10, 0)))

end while

Return NIL 