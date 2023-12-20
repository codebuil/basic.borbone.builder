' Usa um ponteiro para escrever um caractere na memória de vídeo (modo texto)
Sub WriteToScreen()
    Dim As Integer * 16 ptrVideoMemory
    Dim As String s = "Hello, World!"

    ' Define o endereço de memória de vídeo para o modo texto (0xB8000)
    ptrVideoMemory = &Hb8000

    ' Escreve a string na memória de vídeo
    For i As Integer = 0 To Len(s) - 1
        ptrVideoMemory[i * 2] = Asc(s[i]) ' Caractere ASCII
        ptrVideoMemory[i * 2 + 1] = &He0 ' Cor de fundo e texto 
    Next
End Sub

WriteToScreen()

