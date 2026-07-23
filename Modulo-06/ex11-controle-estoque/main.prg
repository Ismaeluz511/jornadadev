SET PROCEDURE TO estoque_lib.prg

Function Main()

    LOCAL aEstoque := {}
    LOCAL nOpcao := 0

    hb_cdpSelect("UTF8")

    Do While .T.

        nOpcao := MenuPrincipal()

        Do Case
            Case nOpcao == 1
                ExecutarCadastro(aEstoque)

            Case nOpcao == 2
                QOut("========================================")
                ListarProdutos(aEstoque)
                QOut("========================================")

            Case nOpcao == 3
                ExecutarEntrada(aEstoque)

            Case nOpcao == 4
                ExecutarSaida(aEstoque)

            Case nOpcao == 5
                ExecutarBusca(aEstoque)

            Case nOpcao == 6
                QOut("========================================")
                RelatorioValorEstoque(aEstoque)
                QOut("========================================")

            Case nOpcao == 0
                QOut("Encerrando o sistema...")
                Exit

            Otherwise
                QOut("Opção inválida! Tente novamente.")

            Endcase

        Enddo

Return NIL


Function MenuPrincipal()

    LOCAL cOpcaoDigitada := ""
    LOCAL nOpcao := -1

    QOut("========================================")
    QOut("     CONTROLE DE ESTOQUE SIMPLIFICADO")
    QOut("========================================")
    QOut("1 - Cadastrar produto")
    QOut("2 - Listar produtos")
    QOut("3 - Entrada de estoque")
    QOut("4 - Saída de estoque")
    QOut("5 - Buscar produto por código")
    QOut("6 - Relatório de valor em estoque")
    QOut("0 - Sair")
    QOut("Digite a opção:")
    ACCEPT "" TO cOpcaoDigitada
    nOpcao := Val(cOpcaoDigitada)

Return nOpcao


Function ExecutarCadastro(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL cNome := ""
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0
    LOCAL cPrecoDigitado := ""
    LOCAL nPreco := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    QOut("Digite o nome do produto:")
    ACCEPT "" TO cNome

    QOut("Digite a quantidade inicial:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    QOut("Digite o preço unitário:")
    ACCEPT "" TO cPrecoDigitado
    nPreco := Val(cPrecoDigitado)

    CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)

    QOut("Produto cadastrado com sucesso!")

Return NIL


Function ExecutarEntrada(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Erro: produto não encontrado!")
Return NIL
    EndIf

    QOut("Digite a quantidade de entrada:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    EntradaEstoque(aEstoque, nPosicao, nQtd)

    QOut("Entrada registrada com sucesso!")

Return NIL


Function ExecutarSaida(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0
    LOCAL lOk := .F.

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Erro: produto não encontrado!")
Return NIL
    EndIf

    QOut("Digite a quantidade de saída:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    lOk := SaidaEstoque(aEstoque, nPosicao, nQtd)

    If lOk
        QOut("Saída registrada com sucesso!")
    Else
        QOut("Erro: estoque insuficiente para essa saída!")
    EndIf

Return NIL


Function ExecutarBusca(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Produto não encontrado.")
    Else
        QOut("Produto encontrado na posição: " + Str(nPosicao))
        QOut("Nome: " + aEstoque[nPosicao][2])
        QOut("Quantidade: " + Str(aEstoque[nPosicao][3]))
        QOut("Preço unitário: " + Str(aEstoque[nPosicao][4], 10, 2))
    EndIf

Return NIL