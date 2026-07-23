Function Main()

    LOCAL cHora
    LOCAL dInicio := Seconds()

    hb_cdpSelect("PT850")

    Do While ( Seconds() - dInicio ) < 30

        CLEAR SCREEN

        cHora := ObterHora()
        cHora := FormatarHora(cHora)
        ExibirHora(cHora)

        Inkey(1)   //Aguarda aproximadamente 1 segundo//

    Enddo

Return NIL

//Retornar a hora atual//
Function ObterHora()

Return Time()

//Formatar a hora no PadrÃ£o HH:MM:SS//
Function FormatarHora(cHora)

Return Left(cHora,8)

//Exibe a hora na tela//
Function ExibirHora(cHora)

    QOut("=================================")
    QOut("      RELàGIO DIGITAL")
    QOut("=================================")
    QOut("")
    QOut("Hora Atual: " + cHora)

Return NIL