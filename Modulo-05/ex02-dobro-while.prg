Function Main()

LOCAL cValorDigitado := ""
LOCAL nValor          := 0

DO WHILE .T.

    QOut("Digite um valor (zero ou negativo para parar):")

ACCEPT "" TO cValorDigitado
nValor := Val(cValorDigitado)

if nValor <= 0
EXIT
endif

    QOut("Dobro: " + Str(nValor * 2))

enddo

    QOut("Programa encerrado.")