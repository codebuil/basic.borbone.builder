' Usa um ponteiro para escrever um caractere na memória de vídeo (modo texto)
#include once "./file/base.bi"
public Sub MAIN()export
    const hello as string ="hello world..."
    dim p1 as byte ptr
    p1=@hello
    clears
    locates 10,10
    prints p1
End Sub
MAIN


