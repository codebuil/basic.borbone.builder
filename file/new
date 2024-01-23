' Usa um ponteiro para escrever um caractere na memória de vídeo (modo texto)
extern "c"
public Sub MAIN()export
    Dim ptrVideoMemory As byte ptr = &Hb8000
    dim i as integer =0
    ' Define o endereço de memória de vídeo para o modo texto (0xB8000)
    'ptrVideoMemory = &Hb8000

    ' Escreve a string na memória de vídeo
    
    for i=0 to 2000
        
        ptrVideoMemory[i * 2] = 65 ' Caractere ASCII
        ptrVideoMemory[i * 2 + 1] = &He0 ' Cor de fundo e texto 
        
    next
End Sub
end extern
MAIN


