' Usa um ponteiro para escrever um caractere na memória de vídeo (modo texto)
#include once "./file/base.bi"
public Sub MAIN()export
    const hello1 as string ="hello "
    const hello2 as string ="world..."
    dim p1 as byte ptr=@hello1
    dim p2 as byte ptr=@hello2
    dim p3 as byte ptr=mallocs(150)
    strcpys(p3,p1)
    strcats(p3,p2)
    clears
    locates 10,10
    prints p3
End Sub
MAIN


