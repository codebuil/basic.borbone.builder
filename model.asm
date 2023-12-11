.global _start
_GLOBAL_OFFSET_TABLE_:
.org 0x101000
movl $0x21cd4cff,%eax
_start:
jmp kernel_main
_GLOBAL_OFFSET_TABLES_:
.long  200
