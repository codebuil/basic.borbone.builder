'
#include once "./file/base.bi"
public Sub MAIN()export
    const hello1 as string ="hello "
    const hello2 as string ="world..."
    dim p1 as byte ptr=@hello1
    
    dim p2 as byte ptr=@hello2
    
    dim p3 as ostring
    p3 *= 150  'mallocs 150 bytes
    p3 &= p1 ' copy p1 into p3 string as
    p3 += p2 ' cat p2 into p3 string as
    clears
    locates 10,10
    prints tostring(p3)
End Sub
MAIN


