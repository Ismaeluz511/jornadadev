Function Main()

LOCAL cNome := "" 
LOCAL cDisci := ""
LOCAL cResp := "S" 
LOCAL nNota1 :=  0 
LOCAL nNota2 := 0

Do While cResp == "S"

    While .T.

    ACCEPT "Digite o nome do aluno: " TO cNome

    If Len(Trim(cNome)) > 0 
    Exit
    Endif 

    QOut("Nome inválido!")
    
    End While

    While .T.

    ACCEPT "Digite o nome da disciplina(Ex: MAT,POR,CIE,FIS): " TO cDisci

    If Len(cDisci) == 3 .AND. cDisci == Upper(cDisci) 
    Exit
    Endif 

    QOut("Disciplina inválida!")
    
    End While

    While .T.

    INPUT "Digite a primeira nota do aluno: " TO nNota1

    If nNota1 >= 0 .AND. nNota1 <= 10
    Exit
    Endif

    QOut("Nota inválida!")
    
    End While

    While .T.

    INPUT "Digite a segunda nota do aluno: " TO nNota2

    If nNota2 >= 0 .AND. nNota2 <= 10
    Exit
    Endif 

    QOut("Nota inválida!")
    
    End While

    QOut("Aluno: " + cNome)
    QOut("Disciplina: " + cDisci)
    QOut("Média: " + Alltrim(Str((nNota1 + nNota2) / 2, 10, 2)))



    ACCEPT "Deseja calcular outro? (Sim/Nao) " TO cResp

End do

Return NIL