//Troquei Sorteado por Premiado! mas resultado o mesmo!!!

Function Main()

LOCAL nPremia := HB_RandomInt(1,100) 
LOCAL nPalp := 0 
LOCAL nTentat := 0

FOR nTentat := 1 TO 7

INPUT "Digite seu palpite de 1 a 100: " TO nPalp

If nPalp == nPremia
    QOut("Parabéns! Você acertou o número!")
Exit
Elseif nPalp > nPremia
        QOut("O palpite é maior do que o número premiado!")
Else
        QOut("O palpite é menor do que o número premiado!")
Endif

        QOut("Você tem mais " + Alltrim(Str(7 - nTentat, 10, 0)) + " tentativas!")

End for
    
        QOut("Tentativas: " + Alltrim(Str(nTentat - 1, 10, 0)))
        QOut("O número premiado era " + Alltrim((Str(nPremia, 10, 0))))

Return NIL