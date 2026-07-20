Function Main()

LOCAL nA := 0, nB := 0, cOperacao := ""

INPUT "Digite o primeiro número: " TO nA
INPUT "Digite o segundo número: " TO nB
ACCEPT "Digite qual operação a ser realizada +,-,*,/,^(potência),R(raiz): " TO cOperacao

do case
    case cOperacao == "+"
        QOut("Resultado: " + Alltrim(str(nA + nB, 10, 2)))
    case cOperacao == "-"
        QOut("Resultado: " + Alltrim(str(nA - nB, 10, 2)))
    case cOperacao == "*"
        QOut("Resultado: " + Alltrim(str(nA * nB, 10, 2)))
    case cOperacao == "/"
        if nB == 0 
            QOut("Não tem divisão por zero!")
        else
            QOut("Resultado: " + Alltrim(str(nA / nB, 10, 2)))
        endif

    case cOperacao == "^"
        QOut("Resultado: " + Alltrim(str(nA ^ nB, 10, 2)))
    case cOperacao == "R"
        QOut("Resultado:" + Alltrim(str(Sqrt(nA), 10, 2)) + " e " + Alltrim(str(Sqrt(nB), 10, 2)))
    otherwise
        QOut("Operações inválidas!")
endcase

Return NIL