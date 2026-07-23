Function Main()

    LOCAL aCarrinho := {}
    LOCAL cNomeProduto := ""
    LOCAL cPrecoDigitado := ""
    LOCAL nPreco := 0
    LOCAL cContinuar := ""
    LOCAL nTotal := 0
    LOCAL i := 0
    
    hb_cdpSelect("UTF8")

    QOut("========================================")
    QOut("        CARRINHO DE COMPRAS")
    QOut("========================================")

    Do While .T.

        QOut("Digite o nome do produto: ")
        ACCEPT "" TO cNomeProduto

        QOut("Digite o preço do produto: ")
        ACCEPT "" TO cPrecoDigitado
        nPreco := Val(cPrecoDigitado)


        AAdd(aCarrinho, {cNomeProduto, nPreco})

        QOut("Deseja adicionar outro item? (S/N)")
        ACCEPT "" TO cContinuar

        If Upper(cContinuar) <> "S"
            Exit
        EndIf

    Enddo

    QOut("========================================")
    QOut("           ITENS DO CARRINHO")
    QOut("========================================")

    For i := 1 TO Len(aCarrinho)
        QOut(aCarrinho[i][1] + " - R$ " + Str(aCarrinho[i][2], 10, 2))
        nTotal := nTotal + aCarrinho[i][2]
    Next

    QOut("========================================")
    QOut("Total: R$ " + Str(nTotal, 10, 2))
    QOut("========================================")

Return NIL