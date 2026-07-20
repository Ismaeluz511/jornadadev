Function Main()

    LOCAL nIdade := 0
    LOCAL nDependentes := 0
    LOCAL nNovosDependentes := 0
    LOCAL nValorMensalidade := 0

    INPUT "Insira a sua idade: " TO nIdade
    INPUT "Insira o Total de Dependentes: " TO nDependentes

    if nIdade <= 0
        QOut("Insira qualquer idade maior que zero!")
    endif

    if nDependentes >= 0
        nNovosDependentes := nDependentes * 90
    else
        QOut("Insira um valor maior ou igual a zero")
    endif
    
    do case
        case nIdade <= 25
            nValorMensalidade := 180
        case nIdade <= 40
            nValorMensalidade := 260
        case nIdade <= 60
            nValorMensalidade := 380
        otherwise
            nValorMensalidade := 520
    endcase

    nValorMensalidade := nValorMensalidade + nNovosDependentes

    QOut("O Valor Total do plano é de R$: " + Alltrim(str(nValorMensalidade, 10, 2)))    

Return NIL