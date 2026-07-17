Function Main()

LOCAL cN1, cN2, cN3, cN4
LOCAL nN1, nN2, nN3, nN4, nMedia

ACCEPT "Nota 1:" TO cN1
ACCEPT "Nota 2:" TO cN2
ACCEPT "Nota 3:" TO cN3
ACCEPT "Nota 4:" TO cN4

nN1 := Val(cN1)
nN2 := Val(cN2)
nN3 := Val(cN3)
nN4 := Val(cN4)

nMedia := (nN1*1 + nN2*2 + nN3*3 + nN4*4) / (1 + 2 + 3 + 4)

QOut("Media ponderada ‚:" + str(nMedia, 10, 2))

Return NIL