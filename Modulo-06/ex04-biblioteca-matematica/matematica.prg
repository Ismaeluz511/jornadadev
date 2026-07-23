Function FatorialN(nN)

    LOCAL nResult := 1
    LOCAL i

    If nN <= 1
    Return 1
    EndIf

    For i := 1 TO nN
        nResult := nResult * i
    Next 

Return nResult

Function EPrimo(nN)

    LOCAL i

    If nN < 2
    Return .F.
    EndIf

    For i := 2 TO nN - 1
        If nN % i == 0
        Return .F.
        EndIf
    Next

Return .T.

Function MMC(nA, nB)

    LOCAL nMaior := 0
    LOCAL nResult := 0

    If nA > nB
        nMaior := nA
    Else
        nMaior := nB
    EndIf

    nResult := nMaior

    Do While .T.
        If nResult % nA == 0 .And. nResult % nB == 0
            Exit
        EndIf
        nResult := nResult + nMaior
    Enddo

Return nResult

Function MDC(nA, nB)

    LOCAL nResto := 0

    Do While nB <> 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    Enddo

Return nA