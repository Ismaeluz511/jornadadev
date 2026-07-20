Function Main()

LOCAL cMesDigitado := "" 
LOCAL nMes := 0
LOCAL cNomedoMes := ""

QOut("Digite o número do mês (1 a 12): ")
ACCEPT "" TO cMesDigitado
nMes := Val(cMesDigitado)

do case
    case nMes == 1
        cNomedoMes := "Janeiro"
    case nMes == 2
        cNomedoMes := "Fevereiro"
    case nMes == 3
        cNomedoMes := "Março"
    case nMes == 4
        cNomedoMes := "Abril"
    case nMes == 5
        cNomedoMes := "Maio"
    case nMes == 6
        cNomedoMes := "Junho"
    case nMes == 7
        cNomedoMes := "Julho"
    case nMes == 8
        cNomedoMes := "Agosto"
    case nMes == 9
        cNomedoMes := "Setembro"
    case nMes == 10
        cNomedoMes := "Outubro"
    case nMes == 11
        cNomedoMes := "Novembro"
    case nMes == 12
        cNomedoMes := "Dezembro"
    otherwise
        cNomedoMes := "Mês Inválido"
endcase

QOut("Mês: " + cNomedoMes)

Return NIL