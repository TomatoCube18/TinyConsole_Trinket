
bin/calibrator.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	40c0006f          	j	40c <reset_handler>

Disassembly of section .text:

00000004 <I2C_write>:
   4:	400057b7          	lui	a5,0x40005
   8:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
   c:	0147d703          	lhu	a4,20(a5)
  10:	08077713          	and	a4,a4,128
  14:	df65                	beqz	a4,c <I2C_write+0x8>
  16:	00a79823          	sh	a0,16(a5)
  1a:	8082                	ret

0000001c <I2C_stop>:
  1c:	400057b7          	lui	a5,0x40005
  20:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
  24:	0146d703          	lhu	a4,20(a3)
  28:	8b11                	and	a4,a4,4
  2a:	df6d                	beqz	a4,24 <I2C_stop+0x8>
  2c:	4007d703          	lhu	a4,1024(a5)
  30:	20076713          	or	a4,a4,512
  34:	40e79023          	sh	a4,1024(a5)
  38:	8082                	ret

0000003a <I2C_start.constprop.0>:
  3a:	400057b7          	lui	a5,0x40005
  3e:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
  42:	0186d703          	lhu	a4,24(a3)
  46:	8b09                	and	a4,a4,2
  48:	ff6d                	bnez	a4,42 <I2C_start.constprop.0+0x8>
  4a:	4007d703          	lhu	a4,1024(a5)
  4e:	10076713          	or	a4,a4,256
  52:	40e79023          	sh	a4,1024(a5)
  56:	400057b7          	lui	a5,0x40005
  5a:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
  5e:	0147d703          	lhu	a4,20(a5)
  62:	8b05                	and	a4,a4,1
  64:	df6d                	beqz	a4,5e <I2C_start.constprop.0+0x24>
  66:	07800713          	li	a4,120
  6a:	00e79823          	sh	a4,16(a5)
  6e:	400056b7          	lui	a3,0x40005
  72:	00820737          	lui	a4,0x820
  76:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
  7a:	070d                	add	a4,a4,3 # 820003 <system.c.6059c1b7+0x81f159>
  7c:	0146d783          	lhu	a5,20(a3)
  80:	0186d603          	lhu	a2,24(a3)
  84:	07c2                	sll	a5,a5,0x10
  86:	8fd1                	or	a5,a5,a2
  88:	8ff9                	and	a5,a5,a4
  8a:	fee799e3          	bne	a5,a4,7c <I2C_start.constprop.0+0x42>
  8e:	8082                	ret

00000090 <OLED_setline>:
  90:	1151                	add	sp,sp,-12
  92:	c406                	sw	ra,8(sp)
  94:	c222                	sw	s0,4(sp)
  96:	842a                	mv	s0,a0
  98:	374d                	jal	3a <I2C_start.constprop.0>
  9a:	4501                	li	a0,0
  9c:	37a5                	jal	4 <I2C_write>
  9e:	fb040513          	add	a0,s0,-80
  a2:	0ff57513          	zext.b	a0,a0
  a6:	3fb9                	jal	4 <I2C_write>
  a8:	4501                	li	a0,0
  aa:	3fa9                	jal	4 <I2C_write>
  ac:	4541                	li	a0,16
  ae:	3f99                	jal	4 <I2C_write>
  b0:	4412                	lw	s0,4(sp)
  b2:	40a2                	lw	ra,8(sp)
  b4:	0131                	add	sp,sp,12
  b6:	b79d                	j	1c <I2C_stop>

000000b8 <OLED_clearline>:
  b8:	1151                	add	sp,sp,-12
  ba:	c406                	sw	ra,8(sp)
  bc:	c222                	sw	s0,4(sp)
  be:	3fc9                	jal	90 <OLED_setline>
  c0:	3fad                	jal	3a <I2C_start.constprop.0>
  c2:	04000513          	li	a0,64
  c6:	3f3d                	jal	4 <I2C_write>
  c8:	08000413          	li	s0,128
  cc:	147d                	add	s0,s0,-1
  ce:	4501                	li	a0,0
  d0:	0ff47413          	zext.b	s0,s0
  d4:	3f05                	jal	4 <I2C_write>
  d6:	f87d                	bnez	s0,cc <OLED_clearline+0x14>
  d8:	4412                	lw	s0,4(sp)
  da:	40a2                	lw	ra,8(sp)
  dc:	0131                	add	sp,sp,12
  de:	bf3d                	j	1c <I2C_stop>

000000e0 <OLED_scrollDisplay>:
  e0:	1151                	add	sp,sp,-12
  e2:	c026                	sw	s1,0(sp)
  e4:	200004b7          	lui	s1,0x20000
  e8:	c222                	sw	s0,4(sp)
  ea:	0024c403          	lbu	s0,2(s1) # 20000002 <scroll>
  ee:	c406                	sw	ra,8(sp)
  f0:	8522                	mv	a0,s0
  f2:	0405                	add	s0,s0,1
  f4:	881d                	and	s0,s0,7
  f6:	37c9                	jal	b8 <OLED_clearline>
  f8:	00848123          	sb	s0,2(s1)
  fc:	3f3d                	jal	3a <I2C_start.constprop.0>
  fe:	4501                	li	a0,0
 100:	3711                	jal	4 <I2C_write>
 102:	0d300513          	li	a0,211
 106:	3dfd                	jal	4 <I2C_write>
 108:	00341513          	sll	a0,s0,0x3
 10c:	3de5                	jal	4 <I2C_write>
 10e:	4412                	lw	s0,4(sp)
 110:	40a2                	lw	ra,8(sp)
 112:	4482                	lw	s1,0(sp)
 114:	0131                	add	sp,sp,12
 116:	b719                	j	1c <I2C_stop>

00000118 <OLED_write>:
 118:	1151                	add	sp,sp,-12
 11a:	c222                	sw	s0,4(sp)
 11c:	c406                	sw	ra,8(sp)
 11e:	07f57413          	and	s0,a0,127
 122:	c026                	sw	s1,0(sp)
 124:	06057513          	and	a0,a0,96
 128:	c941                	beqz	a0,1b8 <OLED_write+0xa0>
 12a:	1401                	add	s0,s0,-32
 12c:	00241793          	sll	a5,s0,0x2
 130:	943e                	add	s0,s0,a5
 132:	0442                	sll	s0,s0,0x10
 134:	3719                	jal	3a <I2C_start.constprop.0>
 136:	8041                	srl	s0,s0,0x10
 138:	04000513          	li	a0,64
 13c:	35e1                	jal	4 <I2C_write>
 13e:	00540493          	add	s1,s0,5
 142:	04c2                	sll	s1,s1,0x10
 144:	80c1                	srl	s1,s1,0x10
 146:	49400713          	li	a4,1172
 14a:	87a2                	mv	a5,s0
 14c:	97ba                	add	a5,a5,a4
 14e:	0007c503          	lbu	a0,0(a5)
 152:	0405                	add	s0,s0,1
 154:	0442                	sll	s0,s0,0x10
 156:	357d                	jal	4 <I2C_write>
 158:	8041                	srl	s0,s0,0x10
 15a:	49400713          	li	a4,1172
 15e:	fe9416e3          	bne	s0,s1,14a <OLED_write+0x32>
 162:	4501                	li	a0,0
 164:	3545                	jal	4 <I2C_write>
 166:	3d5d                	jal	1c <I2C_stop>
 168:	20000737          	lui	a4,0x20000
 16c:	00074783          	lbu	a5,0(a4) # 20000000 <column>
 170:	46d1                	li	a3,20
 172:	0785                	add	a5,a5,1
 174:	0ff7f793          	zext.b	a5,a5
 178:	00f6e963          	bltu	a3,a5,18a <OLED_write+0x72>
 17c:	00f70023          	sb	a5,0(a4)
 180:	40a2                	lw	ra,8(sp)
 182:	4412                	lw	s0,4(sp)
 184:	4482                	lw	s1,0(sp)
 186:	0131                	add	sp,sp,12
 188:	8082                	ret
 18a:	00070023          	sb	zero,0(a4)
 18e:	20000437          	lui	s0,0x20000
 192:	00144783          	lbu	a5,1(s0) # 20000001 <line>
 196:	471d                	li	a4,7
 198:	02e79863          	bne	a5,a4,1c8 <OLED_write+0xb0>
 19c:	3791                	jal	e0 <OLED_scrollDisplay>
 19e:	00144503          	lbu	a0,1(s0)
 1a2:	200007b7          	lui	a5,0x20000
 1a6:	0027c783          	lbu	a5,2(a5) # 20000002 <scroll>
 1aa:	4412                	lw	s0,4(sp)
 1ac:	40a2                	lw	ra,8(sp)
 1ae:	4482                	lw	s1,0(sp)
 1b0:	953e                	add	a0,a0,a5
 1b2:	891d                	and	a0,a0,7
 1b4:	0131                	add	sp,sp,12
 1b6:	bde9                	j	90 <OLED_setline>
 1b8:	47a9                	li	a5,10
 1ba:	00f41b63          	bne	s0,a5,1d0 <OLED_write+0xb8>
 1be:	200007b7          	lui	a5,0x20000
 1c2:	00078023          	sb	zero,0(a5) # 20000000 <column>
 1c6:	b7e1                	j	18e <OLED_write+0x76>
 1c8:	0785                	add	a5,a5,1
 1ca:	00f400a3          	sb	a5,1(s0)
 1ce:	bfc1                	j	19e <OLED_write+0x86>
 1d0:	47b5                	li	a5,13
 1d2:	faf417e3          	bne	s0,a5,180 <OLED_write+0x68>
 1d6:	200007b7          	lui	a5,0x20000
 1da:	00078023          	sb	zero,0(a5) # 20000000 <column>
 1de:	200007b7          	lui	a5,0x20000
 1e2:	0017c503          	lbu	a0,1(a5) # 20000001 <line>
 1e6:	bf75                	j	1a2 <OLED_write+0x8a>

000001e8 <main>:
 1e8:	400117b7          	lui	a5,0x40011
 1ec:	4398                	lw	a4,0(a5)
 1ee:	76c5                	lui	a3,0xffff1
 1f0:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
 1f2:	1121                	add	sp,sp,-24
 1f4:	8f75                	and	a4,a4,a3
 1f6:	66a1                	lui	a3,0x8
 1f8:	ca06                	sw	ra,20(sp)
 1fa:	c822                	sw	s0,16(sp)
 1fc:	c626                	sw	s1,12(sp)
 1fe:	8f55                	or	a4,a4,a3
 200:	c398                	sw	a4,0(a5)
 202:	4721                	li	a4,8
 204:	cb98                	sw	a4,16(a5)
 206:	4398                	lw	a4,0(a5)
 208:	f10006b7          	lui	a3,0xf1000
 20c:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
 20e:	8f75                	and	a4,a4,a3
 210:	080006b7          	lui	a3,0x8000
 214:	8f55                	or	a4,a4,a3
 216:	c398                	sw	a4,0(a5)
 218:	04000713          	li	a4,64
 21c:	cb98                	sw	a4,16(a5)
 21e:	4398                	lw	a4,0(a5)
 220:	fff106b7          	lui	a3,0xfff10
 224:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
 226:	8f75                	and	a4,a4,a3
 228:	000806b7          	lui	a3,0x80
 22c:	8f55                	or	a4,a4,a3
 22e:	c398                	sw	a4,0(a5)
 230:	4741                	li	a4,16
 232:	cb98                	sw	a4,16(a5)
 234:	4398                	lw	a4,0(a5)
 236:	800006b7          	lui	a3,0x80000
 23a:	757d                	lui	a0,0xfffff
 23c:	0712                	sll	a4,a4,0x4
 23e:	8311                	srl	a4,a4,0x4
 240:	8f55                	or	a4,a4,a3
 242:	c398                	sw	a4,0(a5)
 244:	08000713          	li	a4,128
 248:	cb98                	sw	a4,16(a5)
 24a:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
 24e:	4314                	lw	a3,0(a4)
 250:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
 254:	6585                	lui	a1,0x1
 256:	8ef1                	and	a3,a3,a2
 258:	80058613          	add	a2,a1,-2048 # 800 <main.c.18e44f1d+0x60>
 25c:	8ed1                	or	a3,a3,a2
 25e:	c314                	sw	a3,0(a4)
 260:	4611                	li	a2,4
 262:	cb10                	sw	a2,16(a4)
 264:	4394                	lw	a3,0(a5)
 266:	4305                	li	t1,1
 268:	002002b7          	lui	t0,0x200
 26c:	9ac1                	and	a3,a3,-16
 26e:	0086e693          	or	a3,a3,8
 272:	c394                	sw	a3,0(a5)
 274:	0067a823          	sw	t1,16(a5)
 278:	4314                	lw	a3,0(a4)
 27a:	053d                	add	a0,a0,15
 27c:	dd058593          	add	a1,a1,-560
 280:	f0f6f693          	and	a3,a3,-241
 284:	0106e693          	or	a3,a3,16
 288:	c314                	sw	a3,0(a4)
 28a:	4689                	li	a3,2
 28c:	cb14                	sw	a3,16(a4)
 28e:	40021737          	lui	a4,0x40021
 292:	4f14                	lw	a3,24(a4)
 294:	4401                	li	s0,0
 296:	0116e693          	or	a3,a3,17
 29a:	cf14                	sw	a3,24(a4)
 29c:	4f54                	lw	a3,28(a4)
 29e:	67400493          	li	s1,1652
 2a2:	0056e6b3          	or	a3,a3,t0
 2a6:	cf54                	sw	a3,28(a4)
 2a8:	4398                	lw	a4,0(a5)
 2aa:	8f69                	and	a4,a4,a0
 2ac:	8f4d                	or	a4,a4,a1
 2ae:	c398                	sw	a4,0(a5)
 2b0:	40005737          	lui	a4,0x40005
 2b4:	77e1                	lui	a5,0xffff8
 2b6:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
 2ba:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
 2bc:	40f71e23          	sh	a5,1052(a4)
 2c0:	40671023          	sh	t1,1024(a4)
 2c4:	3b9d                	jal	3a <I2C_start.constprop.0>
 2c6:	4501                	li	a0,0
 2c8:	3b35                	jal	4 <I2C_write>
 2ca:	009407b3          	add	a5,s0,s1
 2ce:	0007c503          	lbu	a0,0(a5)
 2d2:	0405                	add	s0,s0,1
 2d4:	3b05                	jal	4 <I2C_write>
 2d6:	47ad                	li	a5,11
 2d8:	fef419e3          	bne	s0,a5,2ca <main+0xe2>
 2dc:	3381                	jal	1c <I2C_stop>
 2de:	200007b7          	lui	a5,0x20000
 2e2:	00078123          	sb	zero,2(a5) # 20000002 <scroll>
 2e6:	4401                	li	s0,0
 2e8:	8522                	mv	a0,s0
 2ea:	33f9                	jal	b8 <OLED_clearline>
 2ec:	0405                	add	s0,s0,1
 2ee:	0ff47413          	zext.b	s0,s0
 2f2:	47a1                	li	a5,8
 2f4:	fef41ae3          	bne	s0,a5,2e8 <main+0x100>
 2f8:	200007b7          	lui	a5,0x20000
 2fc:	000780a3          	sb	zero,1(a5) # 20000001 <line>
 300:	4501                	li	a0,0
 302:	200007b7          	lui	a5,0x20000
 306:	00078023          	sb	zero,0(a5) # 20000000 <column>
 30a:	3359                	jal	90 <OLED_setline>
 30c:	40021737          	lui	a4,0x40021
 310:	4f1c                	lw	a5,24(a4)
 312:	e000f6b7          	lui	a3,0xe000f
 316:	2017e793          	or	a5,a5,513
 31a:	cf1c                	sw	a5,24(a4)
 31c:	400127b7          	lui	a5,0x40012
 320:	000e0737          	lui	a4,0xe0
 324:	40078793          	add	a5,a5,1024 # 40012400 <__global_pointer$+0x20011c00>
 328:	0705                	add	a4,a4,1 # e0001 <system.c.6059c1b7+0xdf157>
 32a:	c798                	sw	a4,8(a5)
 32c:	e000f7b7          	lui	a5,0xe000f
 330:	4798                	lw	a4,8(a5)
 332:	07870713          	add	a4,a4,120
 336:	469c                	lw	a5,8(a3)
 338:	8f99                	sub	a5,a5,a4
 33a:	fe07cee3          	bltz	a5,336 <main+0x14e>
 33e:	400127b7          	lui	a5,0x40012
 342:	40078793          	add	a5,a5,1024 # 40012400 <__global_pointer$+0x20011c00>
 346:	4798                	lw	a4,8(a5)
 348:	400126b7          	lui	a3,0x40012
 34c:	00876713          	or	a4,a4,8
 350:	c798                	sw	a4,8(a5)
 352:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
 356:	4798                	lw	a4,8(a5)
 358:	8b21                	and	a4,a4,8
 35a:	ff65                	bnez	a4,352 <main+0x16a>
 35c:	4798                	lw	a4,8(a5)
 35e:	00476713          	or	a4,a4,4
 362:	c798                	sw	a4,8(a5)
 364:	40012737          	lui	a4,0x40012
 368:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
 36c:	479c                	lw	a5,8(a5)
 36e:	8b91                	and	a5,a5,4
 370:	ffe5                	bnez	a5,368 <main+0x180>
 372:	68000413          	li	s0,1664
 376:	400127b7          	lui	a5,0x40012
 37a:	40078793          	add	a5,a5,1024 # 40012400 <__global_pointer$+0x20011c00>
 37e:	4798                	lw	a4,8(a5)
 380:	004006b7          	lui	a3,0x400
 384:	8f55                	or	a4,a4,a3
 386:	c798                	sw	a4,8(a5)
 388:	400126b7          	lui	a3,0x40012
 38c:	40068713          	add	a4,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
 390:	431c                	lw	a5,0(a4)
 392:	8b89                	and	a5,a5,2
 394:	dfe5                	beqz	a5,38c <main+0x1a4>
 396:	4774                	lw	a3,76(a4)
 398:	87a2                	mv	a5,s0
 39a:	4601                	li	a2,0
 39c:	06c2                	sll	a3,a3,0x10
 39e:	82c1                	srl	a3,a3,0x10
 3a0:	4725                	li	a4,9
 3a2:	53cc                	lw	a1,36(a5)
 3a4:	4501                	li	a0,0
 3a6:	02b6f963          	bgeu	a3,a1,3d8 <main+0x1f0>
 3aa:	ef0d                	bnez	a4,3e4 <main+0x1fc>
 3ac:	03050513          	add	a0,a0,48
 3b0:	0ff57513          	zext.b	a0,a0
 3b4:	3395                	jal	118 <OLED_write>
 3b6:	4529                	li	a0,10
 3b8:	3385                	jal	118 <OLED_write>
 3ba:	e000f7b7          	lui	a5,0xe000f
 3be:	4798                	lw	a4,8(a5)
 3c0:	005b97b7          	lui	a5,0x5b9
 3c4:	d8078793          	add	a5,a5,-640 # 5b8d80 <system.c.6059c1b7+0x5b7ed6>
 3c8:	973e                	add	a4,a4,a5
 3ca:	e000f6b7          	lui	a3,0xe000f
 3ce:	469c                	lw	a5,8(a3)
 3d0:	8f99                	sub	a5,a5,a4
 3d2:	fe07cee3          	bltz	a5,3ce <main+0x1e6>
 3d6:	b745                	j	376 <main+0x18e>
 3d8:	0505                	add	a0,a0,1
 3da:	0ff57513          	zext.b	a0,a0
 3de:	8e8d                	sub	a3,a3,a1
 3e0:	4605                	li	a2,1
 3e2:	b7d1                	j	3a6 <main+0x1be>
 3e4:	fff70493          	add	s1,a4,-1
 3e8:	17f1                	add	a5,a5,-4
 3ea:	0ff4f713          	zext.b	a4,s1
 3ee:	da55                	beqz	a2,3a2 <main+0x1ba>
 3f0:	03050513          	add	a0,a0,48
 3f4:	0ff57513          	zext.b	a0,a0
 3f8:	c43e                	sw	a5,8(sp)
 3fa:	c236                	sw	a3,4(sp)
 3fc:	c032                	sw	a2,0(sp)
 3fe:	3b29                	jal	118 <OLED_write>
 400:	47a2                	lw	a5,8(sp)
 402:	4602                	lw	a2,0(sp)
 404:	4692                	lw	a3,4(sp)
 406:	0ff4f713          	zext.b	a4,s1
 40a:	bf61                	j	3a2 <main+0x1ba>

0000040c <reset_handler>:
 40c:	1e800793          	li	a5,488
 410:	20000197          	auipc	gp,0x20000
 414:	3f018193          	add	gp,gp,1008 # 20000800 <__global_pointer$>
 418:	00018113          	mv	sp,gp
 41c:	08800513          	li	a0,136
 420:	30051073          	csrw	mstatus,a0
 424:	458d                	li	a1,3
 426:	80459073          	csrw	0x804,a1
 42a:	00000517          	auipc	a0,0x0
 42e:	bd650513          	add	a0,a0,-1066 # 0 <jump_reset>
 432:	8d4d                	or	a0,a0,a1
 434:	30551073          	csrw	mtvec,a0
 438:	34179073          	csrw	mepc,a5
 43c:	200007b7          	lui	a5,0x20000
 440:	200006b7          	lui	a3,0x20000
 444:	6a800713          	li	a4,1704
 448:	00078793          	mv	a5,a5
 44c:	00068693          	mv	a3,a3
 450:	02d7e863          	bltu	a5,a3,480 <reset_handler+0x74>
 454:	200007b7          	lui	a5,0x20000
 458:	00078793          	mv	a5,a5
 45c:	80418713          	add	a4,gp,-2044 # 20000004 <_ebss>
 460:	02e7e563          	bltu	a5,a4,48a <reset_handler+0x7e>
 464:	400217b7          	lui	a5,0x40021
 468:	4741                	li	a4,16
 46a:	c3d8                	sw	a4,4(a5)
 46c:	4695                	li	a3,5
 46e:	e000f737          	lui	a4,0xe000f
 472:	c314                	sw	a3,0(a4)
 474:	4f98                	lw	a4,24(a5)
 476:	03476713          	or	a4,a4,52
 47a:	cf98                	sw	a4,24(a5)
 47c:	30200073          	mret
 480:	4310                	lw	a2,0(a4)
 482:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
 484:	c390                	sw	a2,0(a5)
 486:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
 488:	b7e1                	j	450 <reset_handler+0x44>
 48a:	0007a023          	sw	zero,0(a5)
 48e:	0791                	add	a5,a5,4
 490:	bfc1                	j	460 <reset_handler+0x54>
	...

00000494 <OLED_FONT>:
 494:	0000 0000 0000 2f00 0000 0700 0700 1400     ......./........
 4a4:	147f 147f 2a24 2a7f 2312 0813 6264 4936     ....$*.*.#..db6I
 4b4:	2255 0050 0305 0000 1c00 4122 0000 2241     U"P......."A..A"
 4c4:	001c 0814 083e 0814 3e08 0808 0000 60a0     ....>....>.....`
 4d4:	0800 0808 0808 6000 0060 2000 0810 0204     .......``.. ....
 4e4:	513e 4549 003e 7f42 0040 6142 4951 2146     >QIE>.B.@.BaQIF!
 4f4:	4541 314b 1418 7f12 2710 4545 3945 4a3c     AEK1.....'EEE9<J
 504:	4949 0130 0971 0305 4936 4949 0636 4949     II0.q...6III6.II
 514:	1e29 3600 0036 0000 3656 0000 1408 4122     )..66...V6...."A
 524:	1400 1414 1414 4100 1422 0208 5101 0609     .......A"....Q..
 534:	4932 5159 7c3e 1112 7c12 497f 4949 3e36     2IYQ>|...|.III6>
 544:	4141 2241 417f 2241 7f1c 4949 4149 097f     AAA".AA"..IIIA..
 554:	0909 3e01 4941 7a49 087f 0808 007f 7f41     ...>AIIz......A.
 564:	0041 4020 3f41 7f01 1408 4122 407f 4040     A. @A?...."A.@@@
 574:	7f40 0c02 7f02 047f 1008 3e7f 4141 3e41     @..........>AAA>
 584:	097f 0909 3e06 5141 5e21 097f 2919 4646     .....>AQ!^...)FF
 594:	4949 3149 0101 017f 3f01 4040 3f40 201f     III1.....?@@@?. 
 5a4:	2040 3f1f 3840 3f40 1463 1408 0763 7008     @ .?@8@?c...c..p
 5b4:	0708 5161 4549 0043 417f 0041 0402 1008     ..aQIEC..AA.....
 5c4:	0020 4141 007f 0204 0201 4004 4040 4040      .AA.......@@@@@
 5d4:	0100 0402 2000 5454 7854 487f 4444 3838     ..... TTTx.HDD88
 5e4:	4444 2044 4438 4844 387f 5454 1854 7e08     DDD 8DDH.8TTT..~
 5f4:	0109 1802 a4a4 7ca4 087f 0404 0078 7d44     .......|....x.D}
 604:	0040 8040 7d84 7f00 2810 0044 4100 407f     @.@..}...(D..A.@
 614:	7c00 1804 7804 087c 0404 3878 4444 3844     .|...x|...x8DDD8
 624:	24fc 2424 1818 2424 fc18 087c 0404 4808     .$$$..$$..|....H
 634:	5454 2054 3f04 4044 3c20 4040 7c20 201c     TTT .?D@ <@@ |. 
 644:	2040 3c1c 3040 3c40 2844 2810 1c44 a0a0     @ .<@0@<D(.(D...
 654:	7ca0 6444 4c54 0844 4136 0041 0000 007f     .|DdTLD.6AA.....
 664:	0000 4141 0836 0408 1008 ff08 ffff ffff     ..AA6...........

00000674 <OLED_INIT_CMD>:
 674:	3fa8 148d 0220 12da c0a0 00af               .?.. .......

00000680 <DIVIDER>:
 680:	0001 0000 000a 0000 0064 0000 03e8 0000     ........d.......
 690:	2710 0000 86a0 0001 4240 000f 9680 0098     .'......@B......
 6a0:	e100 05f5 ca00 3b9a                         .......;
