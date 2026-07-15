Function Main ()
    Local nValor := 250
    Local nDesconto := 0
    Local nTotal := 0

    if (nValor > 100)
        nDesconto := nValor * 0.10
    endif
    
    nTotal := nValor - nDesconto 

    Qout("Valor total em R$ com desconto: "+ str(nTotal))

Return NIL
