; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

leaw $1,%A   
movw (%A),%D 
leaw $0,%S 
WHILE:
leaw $1,%A   
addw (%A),%S,%S
decw %D
leaw $WHILE , %A
jg %D
nop
leaw $0,%A  
movw %S,(%A)  