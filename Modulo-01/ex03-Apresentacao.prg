FUNCTION Main() 

    Local cNome:= "Ismael"
    Local cCidade:= "Mogi Mirim"
    Local cCurso:= "Harbour/Advpl"

    hb_cdpSelect("PT850") // fun‡Æo de formata‡Æo de texto para acentua‡Æo!


    Qout("======================")
    Qout("Ficha de Apresenta‡Æo")
    Qout("======================")
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout("======================")

RETURN NIL
