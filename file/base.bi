#inclib "base"
extern "C"
	declare sub clears cdecl alias "clears"()
	declare sub scrollb8000 cdecl alias "scrollb8000"()
	declare sub copyb8000 cdecl alias "copyb8000"(address as integer ,s as byte ptr)
	declare sub locates cdecl alias "locate"(x as integer,y as integer)
	declare sub prints cdecl alias "print"(s as byte ptr)
end extern


