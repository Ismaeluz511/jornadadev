Function Main()

    LOCAL nSalario := 0
    LOCAL nSalarioNovo := 0
    LOCAL nReajuste := 0
    LOCAL nPercentual := 0
    
    INPUT "Insira seu salário: " TO nSalario

    if nSalario <= 0
        QOut("Salário inválido.")
       
    elseif nSalario < 1000
        nPercentual :=0.15

    elseif nSalario <= 2000
        nPercentual :=0.12

    elseif nSalario <= 4000
        nPercentual :=0.08
    else
        nPercentual :=0.05
    endif

    if nSalario > 0

        nReajuste := nSalario * nPercentual
        nSalarioNovo := nSalario * nReajuste

        QOut("O valor do reajuste é: R$" + AllTrim(Str(nReajuste, 10, 2)))
    endif

Return NIL