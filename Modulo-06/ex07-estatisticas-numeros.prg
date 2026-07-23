Function Main()

    LOCAL aNumeros := {}
    LOCAL cNum
    LOCAL nNum
    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL nI

    hb_cdpSelect("UTF8")

    CLEAR SCREEN
    

    QOut("========================================")
    QOut("      ESTATISTICAS DE 10 NUMEROS")
    QOut("========================================")
    QOut("")

    // Leitura dos 10 números
    For nI := 1 TO 10

        ACCEPT "Digite o " + LTrim(Str(nI)) + "§ numero: " TO cNum

        nNum := Val(cNum)

        AAdd(aNumeros, nNum)

        nSoma += nNum

    Next

    // Ordena o array em ordem crescente
    ASort(aNumeros)

    // Calcula a média
    nMedia := nSoma / Len(aNumeros)

    CLEAR SCREEN

    QOut("========================================")
    QOut("              RESULTADO")
    QOut("========================================")
    QOut("")

    QOut("Numeros em ordem crescente:")

    For nI := 1 TO Len(aNumeros)
        QOut(aNumeros[nI])
    Next

    QOut("")
    QOut("Soma........: ", nSoma)
    QOut("Media.......: ", Transform(nMedia, "@E 999,999.99"))
    QOut("Menor valor.: ", aNumeros[1])
    QOut("Maior valor.: ", aNumeros[Len(aNumeros)])

Return NIL