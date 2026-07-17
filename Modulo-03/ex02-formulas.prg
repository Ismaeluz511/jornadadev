#define PI 3.14159 

Function Main()

LOCAL cEntrada
LOCAL nRaio, nArea
LOCAL nCatetoA, nCatetoB, nHipotenusa
LOCAL nPeso, nAltura, nIMC

//a. µrea do c¡rculo
ACCEPT "Digite o valor do raio do c¡rculo: " TO cEntrada
nRaio := Val(cEntrada)
nArea := PI * (nRaio ^ 2)
QOut("A µrea do c¡rculo ‚: ", + str(nArea, 10, 2))

//b. Hipotenusa
ACCEPT "Digite o valor do cateto A: " TO cEntrada
nCatetoA := Val(cEntrada)
ACCEPT "Digite o valor do cateto B: " TO cEntrada
nCatetoB := Val(cEntrada)
nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
QOut("O valor da hipotenusa ‚: ", + str(nHipotenusa, 10, 2))

//c. IMC
ACCEPT "Digite o valor do peso (kg): " TO cEntrada
nPeso := Val(cEntrada)
ACCEPT "Digite o valor da altura (m): " TO cEntrada
nAltura := Val(cEntrada)
nIMC := nPeso / (nAltura ^ 2)
QOut("O valor do IMC ‚: ", + str(nIMC, 10, 2))

Return NIL