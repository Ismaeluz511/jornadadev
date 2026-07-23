FUNCTION Main()

    LOCAL aNum := {}
    LOCAL cNumDigitado := ""
    LOCAL nNumero := 0
    LOCAL i := 0

    hb_cdpSelect("UTF8")

    For i := 1 TO 10
        QOut("Digite o número " + Str(i, 2) + ":")
        ACCEPT "" TO cNumDigitado
        nNumero := Val(cNumDigitado)

        AAdd(aNum, nNumero)
    Next

    QOut("========================================")
    QOut("Antes de ordenar:")
    For i := 1 TO Len(aNum)
        QOut(Str(aNum[i], 10, 2))
    Next

    BubbleSort(aNum)

    QOut("========================================")
    QOut("Depois de ordenar:")
    For i := 1 TO Len(aNum)
        QOut(Str(aNum[i], 10, 2))
    Next
    QOut("========================================")

Return NIL

Function BubbleSort(aVetor)

    LOCAL i := 0
    LOCAL j := 0
    LOCAL nTemp := 0
    LOCAL nTamanho := Len(aVetor)

    For i := 1 TO nTamanho - 1
        For j := 1 TO nTamanho - i

            If aVetor[j] > aVetor[j + 1]
                nTemp        := aVetor[j]
                aVetor[j]    := aVetor[j + 1]
                aVetor[j + 1] := nTemp
            EndIf

        Next
    Next

Return NIL