Function Main()

   LOCAL nVal1
   LOCAL nVal2
   LOCAL cOperacao
   LOCAL uResultado

   nVal1   := LerNumero("Digite o primeiro valor: ")
   cOperacao := LerOperacao()
   nVal2   := LerNumero("Digite o segundo valor: ")

   uResultado := Calcular(nVal1, nVal2, cOperacao)

   MostrarResultado(uResultado)

Return NIL


Function LerNumero(cMensagem)

   LOCAL cValor

   QOut(cMensagem)
   ACCEPT TO cValor

Return Val(cValor)


Function LerOperacao()

   LOCAL cOperacao

   QOut("Digite a operacao (+, -, *, /): ")
   ACCEPT TO cOperacao

Return AllTrim(cOperacao)


Function Calcular(nVal1, nVal2, cOperacao)

   LOCAL uResultado := NIL

   Do Case

   Case cOperacao == "+"
      uResultado := nVal1 + nVal2

   Case cOperacao == "-"
      uResultado := nVal1 - nVal2

   Case cOperacao == "*"
      uResultado := nVal1 * nVal2

   Case cOperacao == "/"

      If nVal2 == 0
      Return .F.
        Endif

      uResultado := nVal1 / nVal2

   Otherwise
   Return .F.

    Endcase

Return uResultado


Function MostrarResultado(uResultado)

   If ValType(uResultado) == "L"

      QOut("Nao foi possivel realizar o calculo.")
      QOut("Operacao invalida ou divisao por zero.")

   Else

      QOut("Resultado: " + LTrim(Str(uResultado)))

   Endif

Return NIL