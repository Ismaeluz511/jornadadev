FUNCTION Main() 

    Local cNome:= "Ismael"
    Local cCidade:= "Mogi Mirim"
    Local cCurso:= "Harbour/Advpl"

    hb_cdpSelect("PT850") // fun‡Æo de formata‡Æo de texto para acentua‡Æo!
    SET DATE FORMAT "dd/mm/yyyy" // Formato de data dia/mˆs/ano


    Qout("======================")
    Qout("Ficha de Apresenta‡Æo")
    Qout("======================")
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout("======================")
    //Exerc¡cio 4 - Data e Hora//
    Qout("Data: "  + Dtoc(Date())) // fun‡Æo que mostra a data e transforma em string!
    Qout("Hora: "  + (Time())) // fun‡Æo que mostra a hora

Return NIL