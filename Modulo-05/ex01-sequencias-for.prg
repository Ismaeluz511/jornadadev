Function Main()

LOCAL nNum

   QOut ("Números de 1 a 100")

FOR nNum := 1 TO 100
   QOut (nNum)
NEXT

   QOut ("")
   QOut ("Números de -50 a 50")

FOR nNum := -50 TO 50
   QOut (nNum)
NEXT

   QOut ("")    
   QOut ("Números de 80 a 5")

FOR nNum := 80 TO 5 STEP -1 
   QOut (nNum)
NEXT 

Return NIL