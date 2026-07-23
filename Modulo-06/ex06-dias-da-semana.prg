Function Main()

    LOCAL cEntrada := ""
    LOCAL nDiaSemana := 0
    LOCAL cDiaExtenso := ""

    hb_cdpSelect("UTF8")

    CLEAR SCREEN

//Loop até receber uma entrada válida.

    Do While .T.
        ACCEPT "Digite um número de 1 a 7 para o dia da semana: " to cEntrada
        nDiaSemana := Int(Val(cEntrada))

        If ValidarDiaSemana (nDiaSemana)
            Exit
        EndIf

        QOut("Aviso: Número inválido! Por favor, digite um valor entre 1 e 7.")
        QOut("")
    Enddo

// Busca o nome do dia usando o índice do array

    cDiaExtenso := DiaDaSemana(nDiaSemana)

    QOut("")
    QOut("O dia correspondente é :" + cDiaExtenso)

Return NIL


// FUNÇÕES MÓDULO

Function ValidarDiaSemana(nDia)
Return nDia >= 1 .AND. nDia <= 7

Function DiaDaSemana(nDia)
    local aDias := {"Domingo", ;
                    "Segunda-Feira", ;
                    "Terça-Feira", ;
                    "Quarta-Feira", ;
                    "Quinta-Feira", ;
                    "Sexta-Feira", ;
                    "Sabádo"}
Return aDias[nDia]

Return NIL