.equ PHY_MEM_OFS, 0xffffffff80000000

	.section .data
	.align 12 #12位对齐
boot_page_table_sv39:
	.zero 8 * 510

	# 0xffffffff_80000000 --> 0x00000000
	# 0xffffffff_C0000000 --> 0x40000000
	.quad (0x00000 << 10) | 0xef
	.quad (0x40000 << 10) | 0xef

