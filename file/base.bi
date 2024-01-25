#inclib "base"
extern "C"
	declare sub clears cdecl alias "clears"()
	declare sub scrollb8000 cdecl alias "scrollb8000"()
	declare sub copyb8000 cdecl alias "copyb8000"(address as integer ,s as byte ptr)
	declare sub locates cdecl alias "locate"(x as integer,y as integer)
	declare sub prints cdecl alias "print"(s as byte ptr)
	declare function mallocs cdecl alias "malloc"(length as integer) as byte ptr
	declare sub strcpys cdecl alias "strcpys"(dest as byte ptr, src as byte ptr)
	declare sub strcats cdecl alias "strcats"(s1 as byte ptr,s2 as byte ptr)
end extern


