Function Main()

    LOCAL cJogaUsu := ""
    LOCAL cJogaCPU     := ""
    LOCAL cVencedor      := ""
    LOCAL cContinuar     := ""

    hb_cdpSelect("PT850")

    QOut("========================================")
    QOut("    JOKENPO (Pedra, Papel, Tesoura)")
    QOut("========================================")

    Do While .T.


        Do While .T.
            QOut("Digite sua jogada (PEDRA, PAPEL ou TESOURA):")
            ACCEPT "" TO cJogaUsu
            cJogaUsu := Upper(cJogaUsu)

            If ValidarJogada(cJogaUsu)
                Exit
            Else
                QOut("Jogada inv lida! Digite PEDRA, PAPEL ou TESOURA.")
            EndIf
        Enddo

        cJogaCPU := SortearJogadaCPU()

        QOut("Vocˆ jogou: " + cJogaUsu)
        QOut("CPU jogou: " + cJogaCPU)

        
        cVencedor := DefinirVencedor(cJogaUsu, cJogaCPU)
        MostrarResultado(cVencedor)

        
        QOut("Deseja jogar novamente? (S/N)")
        ACCEPT "" TO cContinuar

        If Upper(cContinuar) <> "S"
            Exit
        EndIf

    Enddo

    QOut("Obrigado por jogar!")

Return NIL

Function SortearJogadaCPU()

    LOCAL nSorteio := HB_RandomInt(1, 3)
    LOCAL cJogada  := ""

    Do case
        Case nSorteio == 1
            cJogada := "PEDRA"
        Case nSorteio == 2
            cJogada := "PAPEL"
        Case nSorteio == 3
            cJogada := "TESOURA"
        Endcase

    Return cJogada

Function ValidarJogada(cJogada)

    If cJogada == "PEDRA" .Or. cJogada == "PAPEL" .Or. cJogada == "TESOURA"
    Return .T.
    EndIf

Return .F.

Function DefinirVencedor(cJogada1, cJogada2)

    If cJogada1 == cJogada2
    Return "EMPATE"
    EndIf

    Do case
        Case cJogada1 == "PEDRA" .And. cJogada2 == "TESOURA"
        Return "JOGADOR"
        Case cJogada1 == "PAPEL" .And. cJogada2 == "PEDRA"
        Return "JOGADOR"
        Case cJogada1 == "TESOURA" .And. cJogada2 == "PAPEL"
        Return "JOGADOR"
        Otherwise
        Return "CPU"
    Endcase

Return NIL

Function MostrarResultado(cVencedor)

    QOut("========================================")

    Do Case
        Case cVencedor == "EMPATE"
            QOut("Resultado: Empate!")
        Case cVencedor == "JOGADOR"
            QOut("Resultado: Vocˆ venceu!")
        Case cVencedor == "CPU"
            QOut("Resultado: A CPU venceu!")
        Endcase

    QOut("========================================")

    Return NIL