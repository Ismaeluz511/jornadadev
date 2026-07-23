Function CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)

    AAdd(aEstoque, {nCodigo, cNome, nQtd, nPreco})

Return NIL


Function ListarProdutos(aEstoque)

    LOCAL i := 0

    If Len(aEstoque) == 0
        QOut("Nenhum produto cadastrado ainda.")
Return NIL
    EndIf

    QOut("Cód.   Nome                 Qtd     Preço Unit.")
    For i := 1 TO Len(aEstoque)
        QOut(Str(aEstoque[i][1], 4) + "   " + ;
             PadR(aEstoque[i][2], 18) + "  " + ;
             Str(aEstoque[i][3], 5) + "   " + ;
             Str(aEstoque[i][4], 10, 2))
    Next

Return NIL


Function EntradaEstoque(aEstoque, nPosicao, nQtdEntrada)

    aEstoque[nPosicao][3] := aEstoque[nPosicao][3] + nQtdEntrada

Return NIL

Function SaidaEstoque(aEstoque, nPosicao, nQtdSaida)

    If aEstoque[nPosicao][3] < nQtdSaida
Return .F.
    EndIf

    aEstoque[nPosicao][3] := aEstoque[nPosicao][3] - nQtdSaida

Return .T.


Function BuscarProdutoPorCodigo(aEstoque, nCodigo)

    LOCAL i := 0

    For i := 1 TO Len(aEstoque)
        If aEstoque[i][1] == nCodigo
        Return i
        EndIf
    Next

Return 0


Function RelatorioValorEstoque(aEstoque)

    LOCAL i := 0
    LOCAL nValorProduto := 0
    LOCAL nTotalGeral   := 0

    If Len(aEstoque) == 0
        QOut("Nenhum produto cadastrado ainda.")
    Return NIL
    EndIf

    For i := 1 TO Len(aEstoque)
        nValorProduto := aEstoque[i][3] * aEstoque[i][4]
        nTotalGeral   := nTotalGeral + nValorProduto

        QOut(aEstoque[i][2] + " - Valor em estoque: R$ " + Str(nValorProduto, 10, 2))
    Next

    QOut("----------------------------------------")
    QOut("Valor total geral: R$ " + Str(nTotalGeral, 10, 2))

Return NIL