
bin/tiny_pacman.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	5d70006f          	j	dd6 <reset_handler>

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

0000003a <checkDotPresent>:
      3a:	00355693          	srl	a3,a0,0x3
      3e:	81818793          	add	a5,gp,-2024 # 20000018 <dotsMem>
      42:	891d                	and	a0,a0,7
      44:	97b6                	add	a5,a5,a3
      46:	08000713          	li	a4,128
      4a:	40a75733          	sra	a4,a4,a0
      4e:	0007c503          	lbu	a0,0(a5)
      52:	8d79                	and	a0,a0,a4
      54:	8082                	ret

00000056 <return_if_sprite_present>:
      56:	00261793          	sll	a5,a2,0x2
      5a:	97b2                	add	a5,a5,a2
      5c:	0786                	sll	a5,a5,0x1
      5e:	95be                	add	a1,a1,a5
      60:	0065c303          	lbu	t1,6(a1)
      64:	872a                	mv	a4,a0
      66:	08656d63          	bltu	a0,t1,100 <return_if_sprite_present+0xaa>
      6a:	00730793          	add	a5,t1,7
      6e:	4501                	li	a0,0
      70:	08e7c963          	blt	a5,a4,102 <return_if_sprite_present+0xac>
      74:	ee1d                	bnez	a2,b2 <return_if_sprite_present+0x5c>
      76:	8131c503          	lbu	a0,-2029(gp) # 20000013 <INGAME>
      7a:	c541                	beqz	a0,102 <return_if_sprite_present+0xac>
      7c:	4681                	li	a3,0
      7e:	0025c283          	lbu	t0,2(a1)
      82:	40670733          	sub	a4,a4,t1
      86:	0005c303          	lbu	t1,0(a1)
      8a:	00129793          	sll	a5,t0,0x1
      8e:	0035c583          	lbu	a1,3(a1)
      92:	9796                	add	a5,a5,t0
      94:	030e                	sll	t1,t1,0x3
      96:	0796                	sll	a5,a5,0x5
      98:	979a                	add	a5,a5,t1
      9a:	058e                	sll	a1,a1,0x3
      9c:	6505                	lui	a0,0x1
      9e:	97ae                	add	a5,a5,a1
      a0:	e8c50513          	add	a0,a0,-372 # e8c <caracters>
      a4:	953e                	add	a0,a0,a5
      a6:	9536                	add	a0,a0,a3
      a8:	9532                	add	a0,a0,a2
      aa:	953a                	add	a0,a0,a4
      ac:	00054503          	lbu	a0,0(a0)
      b0:	8082                	ret
      b2:	0015c683          	lbu	a3,1(a1)
      b6:	4785                	li	a5,1
      b8:	02f68c63          	beq	a3,a5,f0 <return_if_sprite_present+0x9a>
      bc:	8111c783          	lbu	a5,-2031(gp) # 20000011 <Frame>
      c0:	4619                	li	a2,6
      c2:	ffa78693          	add	a3,a5,-6
      c6:	0ff6f693          	zext.b	a3,a3
      ca:	00d67d63          	bgeu	a2,a3,e4 <return_if_sprite_present+0x8e>
      ce:	17b9                	add	a5,a5,-18
      d0:	0ff7f793          	zext.b	a5,a5
      d4:	00f67863          	bgeu	a2,a5,e4 <return_if_sprite_present+0x8e>
      d8:	8121c683          	lbu	a3,-2030(gp) # 20000012 <TimerGobeactive>
      dc:	8151c783          	lbu	a5,-2027(gp) # 20000015 <GobbingEND>
      e0:	00d7fd63          	bgeu	a5,a3,fa <return_if_sprite_present+0xa4>
      e4:	8141c603          	lbu	a2,-2028(gp) # 20000014 <Gobeactive>
      e8:	0616                	sll	a2,a2,0x5
      ea:	0ff67613          	zext.b	a2,a2
      ee:	b779                	j	7c <return_if_sprite_present+0x26>
      f0:	02000693          	li	a3,32
      f4:	02000613          	li	a2,32
      f8:	b759                	j	7e <return_if_sprite_present+0x28>
      fa:	4681                	li	a3,0
      fc:	4601                	li	a2,0
      fe:	b741                	j	7e <return_if_sprite_present+0x28>
     100:	4501                	li	a0,0
     102:	8082                	ret

00000104 <SpriteWrite>:
     104:	1101                	add	sp,sp,-32
     106:	cc22                	sw	s0,24(sp)
     108:	ca26                	sw	s1,20(sp)
     10a:	c22e                	sw	a1,4(sp)
     10c:	00760413          	add	s0,a2,7
     110:	85b2                	mv	a1,a2
     112:	ce06                	sw	ra,28(sp)
     114:	c02a                	sw	a0,0(sp)
     116:	4481                	li	s1,0
     118:	4601                	li	a2,0
     11a:	00140683          	lb	a3,1(s0)
     11e:	4792                	lw	a5,4(sp)
     120:	02f69e63          	bne	a3,a5,15c <SpriteWrite+0x58>
     124:	00044683          	lbu	a3,0(s0)
     128:	4502                	lw	a0,0(sp)
     12a:	c632                	sw	a2,12(sp)
     12c:	c836                	sw	a3,16(sp)
     12e:	c42e                	sw	a1,8(sp)
     130:	371d                	jal	56 <return_if_sprite_present>
     132:	46c2                	lw	a3,16(sp)
     134:	45a2                	lw	a1,8(sp)
     136:	4632                	lw	a2,12(sp)
     138:	00d51533          	sll	a0,a0,a3
     13c:	8d45                	or	a0,a0,s1
     13e:	0ff57493          	zext.b	s1,a0
     142:	0605                	add	a2,a2,1
     144:	0ff67613          	zext.b	a2,a2
     148:	4795                	li	a5,5
     14a:	0429                	add	s0,s0,10
     14c:	fcf617e3          	bne	a2,a5,11a <SpriteWrite+0x16>
     150:	40f2                	lw	ra,28(sp)
     152:	4462                	lw	s0,24(sp)
     154:	8526                	mv	a0,s1
     156:	44d2                	lw	s1,20(sp)
     158:	6105                	add	sp,sp,32
     15a:	8082                	ret
     15c:	4792                	lw	a5,4(sp)
     15e:	0685                	add	a3,a3,1
     160:	fed791e3          	bne	a5,a3,142 <SpriteWrite+0x3e>
     164:	00044303          	lbu	t1,0(s0)
     168:	c81a                	sw	t1,16(sp)
     16a:	fc030ce3          	beqz	t1,142 <SpriteWrite+0x3e>
     16e:	4502                	lw	a0,0(sp)
     170:	c632                	sw	a2,12(sp)
     172:	c42e                	sw	a1,8(sp)
     174:	35cd                	jal	56 <return_if_sprite_present>
     176:	4342                	lw	t1,16(sp)
     178:	46a1                	li	a3,8
     17a:	4632                	lw	a2,12(sp)
     17c:	406686b3          	sub	a3,a3,t1
     180:	40d55533          	sra	a0,a0,a3
     184:	8d45                	or	a0,a0,s1
     186:	45a2                	lw	a1,8(sp)
     188:	0ff57493          	zext.b	s1,a0
     18c:	bf5d                	j	142 <SpriteWrite+0x3e>

0000018e <DLY_ticks>:
     18e:	e000f7b7          	lui	a5,0xe000f
     192:	479c                	lw	a5,8(a5)
     194:	e000f737          	lui	a4,0xe000f
     198:	953e                	add	a0,a0,a5
     19a:	471c                	lw	a5,8(a4)
     19c:	8f89                	sub	a5,a5,a0
     19e:	fe07cee3          	bltz	a5,19a <DLY_ticks+0xc>
     1a2:	8082                	ret

000001a4 <JOY_sound>:
     1a4:	0ff00713          	li	a4,255
     1a8:	1141                	add	sp,sp,-16
     1aa:	8f09                	sub	a4,a4,a0
     1ac:	c226                	sw	s1,4(sp)
     1ae:	00171493          	sll	s1,a4,0x1
     1b2:	94ba                	add	s1,s1,a4
     1b4:	c422                	sw	s0,8(sp)
     1b6:	c606                	sw	ra,12(sp)
     1b8:	87aa                	mv	a5,a0
     1ba:	842e                	mv	s0,a1
     1bc:	048a                	sll	s1,s1,0x2
     1be:	e411                	bnez	s0,1ca <JOY_sound+0x26>
     1c0:	40b2                	lw	ra,12(sp)
     1c2:	4422                	lw	s0,8(sp)
     1c4:	4492                	lw	s1,4(sp)
     1c6:	0141                	add	sp,sp,16
     1c8:	8082                	ret
     1ca:	c799                	beqz	a5,1d8 <JOY_sound+0x34>
     1cc:	40011737          	lui	a4,0x40011
     1d0:	80070713          	add	a4,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     1d4:	4689                	li	a3,2
     1d6:	cb54                	sw	a3,20(a4)
     1d8:	8526                	mv	a0,s1
     1da:	c03e                	sw	a5,0(sp)
     1dc:	3f4d                	jal	18e <DLY_ticks>
     1de:	40011737          	lui	a4,0x40011
     1e2:	80070713          	add	a4,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     1e6:	4689                	li	a3,2
     1e8:	cb14                	sw	a3,16(a4)
     1ea:	8526                	mv	a0,s1
     1ec:	374d                	jal	18e <DLY_ticks>
     1ee:	147d                	add	s0,s0,-1
     1f0:	4782                	lw	a5,0(sp)
     1f2:	0ff47413          	zext.b	s0,s0
     1f6:	b7e1                	j	1be <JOY_sound+0x1a>

000001f8 <I2C_start.constprop.0>:
     1f8:	400057b7          	lui	a5,0x40005
     1fc:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     200:	0186d703          	lhu	a4,24(a3)
     204:	8b09                	and	a4,a4,2
     206:	ff6d                	bnez	a4,200 <I2C_start.constprop.0+0x8>
     208:	4007d703          	lhu	a4,1024(a5)
     20c:	10076713          	or	a4,a4,256
     210:	40e79023          	sh	a4,1024(a5)
     214:	400057b7          	lui	a5,0x40005
     218:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     21c:	0147d703          	lhu	a4,20(a5)
     220:	8b05                	and	a4,a4,1
     222:	df6d                	beqz	a4,21c <I2C_start.constprop.0+0x24>
     224:	07800713          	li	a4,120
     228:	00e79823          	sh	a4,16(a5)
     22c:	400056b7          	lui	a3,0x40005
     230:	00820737          	lui	a4,0x820
     234:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
     238:	070d                	add	a4,a4,3 # 820003 <_data_lma+0x81e42b>
     23a:	0146d783          	lhu	a5,20(a3)
     23e:	0186d603          	lhu	a2,24(a3)
     242:	07c2                	sll	a5,a5,0x10
     244:	8fd1                	or	a5,a5,a2
     246:	8ff9                	and	a5,a5,a4
     248:	fee799e3          	bne	a5,a4,23a <I2C_start.constprop.0+0x42>
     24c:	8082                	ret

0000024e <main>:
     24e:	400117b7          	lui	a5,0x40011
     252:	4398                	lw	a4,0(a5)
     254:	76c5                	lui	a3,0xffff1
     256:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
     258:	f8810113          	add	sp,sp,-120
     25c:	8f75                	and	a4,a4,a3
     25e:	66a1                	lui	a3,0x8
     260:	da86                	sw	ra,116(sp)
     262:	d8a2                	sw	s0,112(sp)
     264:	d6a6                	sw	s1,108(sp)
     266:	8f55                	or	a4,a4,a3
     268:	c398                	sw	a4,0(a5)
     26a:	4721                	li	a4,8
     26c:	cb98                	sw	a4,16(a5)
     26e:	4398                	lw	a4,0(a5)
     270:	f10006b7          	lui	a3,0xf1000
     274:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
     276:	8f75                	and	a4,a4,a3
     278:	080006b7          	lui	a3,0x8000
     27c:	8f55                	or	a4,a4,a3
     27e:	c398                	sw	a4,0(a5)
     280:	04000713          	li	a4,64
     284:	cb98                	sw	a4,16(a5)
     286:	4398                	lw	a4,0(a5)
     288:	fff106b7          	lui	a3,0xfff10
     28c:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
     28e:	8f75                	and	a4,a4,a3
     290:	000806b7          	lui	a3,0x80
     294:	8f55                	or	a4,a4,a3
     296:	c398                	sw	a4,0(a5)
     298:	4741                	li	a4,16
     29a:	cb98                	sw	a4,16(a5)
     29c:	4398                	lw	a4,0(a5)
     29e:	800006b7          	lui	a3,0x80000
     2a2:	757d                	lui	a0,0xfffff
     2a4:	0712                	sll	a4,a4,0x4
     2a6:	8311                	srl	a4,a4,0x4
     2a8:	8f55                	or	a4,a4,a3
     2aa:	c398                	sw	a4,0(a5)
     2ac:	08000713          	li	a4,128
     2b0:	cb98                	sw	a4,16(a5)
     2b2:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     2b6:	4314                	lw	a3,0(a4)
     2b8:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
     2bc:	6585                	lui	a1,0x1
     2be:	8ef1                	and	a3,a3,a2
     2c0:	80058613          	add	a2,a1,-2048 # 800 <main+0x5b2>
     2c4:	8ed1                	or	a3,a3,a2
     2c6:	c314                	sw	a3,0(a4)
     2c8:	4611                	li	a2,4
     2ca:	cb10                	sw	a2,16(a4)
     2cc:	4394                	lw	a3,0(a5)
     2ce:	4305                	li	t1,1
     2d0:	002002b7          	lui	t0,0x200
     2d4:	9ac1                	and	a3,a3,-16
     2d6:	0086e693          	or	a3,a3,8
     2da:	c394                	sw	a3,0(a5)
     2dc:	0067a823          	sw	t1,16(a5)
     2e0:	4314                	lw	a3,0(a4)
     2e2:	053d                	add	a0,a0,15
     2e4:	dd058593          	add	a1,a1,-560
     2e8:	f0f6f693          	and	a3,a3,-241
     2ec:	0106e693          	or	a3,a3,16
     2f0:	c314                	sw	a3,0(a4)
     2f2:	4689                	li	a3,2
     2f4:	cb14                	sw	a3,16(a4)
     2f6:	40021737          	lui	a4,0x40021
     2fa:	4f14                	lw	a3,24(a4)
     2fc:	6485                	lui	s1,0x1
     2fe:	4401                	li	s0,0
     300:	0116e693          	or	a3,a3,17
     304:	cf14                	sw	a3,24(a4)
     306:	4f54                	lw	a3,28(a4)
     308:	e5848493          	add	s1,s1,-424 # e58 <OLED_INIT_CMD>
     30c:	0056e6b3          	or	a3,a3,t0
     310:	cf54                	sw	a3,28(a4)
     312:	4398                	lw	a4,0(a5)
     314:	8f69                	and	a4,a4,a0
     316:	8f4d                	or	a4,a4,a1
     318:	c398                	sw	a4,0(a5)
     31a:	40005737          	lui	a4,0x40005
     31e:	77e1                	lui	a5,0xffff8
     320:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
     324:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
     326:	40f71e23          	sh	a5,1052(a4)
     32a:	40671023          	sh	t1,1024(a4)
     32e:	35e9                	jal	1f8 <I2C_start.constprop.0>
     330:	4501                	li	a0,0
     332:	39c9                	jal	4 <I2C_write>
     334:	009407b3          	add	a5,s0,s1
     338:	0007c503          	lbu	a0,0(a5)
     33c:	0405                	add	s0,s0,1
     33e:	31d9                	jal	4 <I2C_write>
     340:	47c5                	li	a5,17
     342:	fef419e3          	bne	s0,a5,334 <main+0xe6>
     346:	39d9                	jal	1c <I2C_stop>
     348:	40021737          	lui	a4,0x40021
     34c:	4f1c                	lw	a5,24(a4)
     34e:	40012437          	lui	s0,0x40012
     352:	40040413          	add	s0,s0,1024 # 40012400 <__global_pointer$+0x20011c00>
     356:	2017e793          	or	a5,a5,513
     35a:	cf1c                	sw	a5,24(a4)
     35c:	000e07b7          	lui	a5,0xe0
     360:	0785                	add	a5,a5,1 # e0001 <_data_lma+0xde429>
     362:	c41c                	sw	a5,8(s0)
     364:	07800513          	li	a0,120
     368:	351d                	jal	18e <DLY_ticks>
     36a:	441c                	lw	a5,8(s0)
     36c:	400126b7          	lui	a3,0x40012
     370:	0087e793          	or	a5,a5,8
     374:	c41c                	sw	a5,8(s0)
     376:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
     37a:	4798                	lw	a4,8(a5)
     37c:	8b21                	and	a4,a4,8
     37e:	ff65                	bnez	a4,376 <main+0x128>
     380:	4798                	lw	a4,8(a5)
     382:	00476713          	or	a4,a4,4
     386:	c798                	sw	a4,8(a5)
     388:	40012737          	lui	a4,0x40012
     38c:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
     390:	479c                	lw	a5,8(a5)
     392:	8b91                	and	a5,a5,4
     394:	ffe5                	bnez	a5,38c <main+0x13e>
     396:	fc800713          	li	a4,-56
     39a:	80e18b23          	sb	a4,-2026(gp) # 20000016 <LEVELSPEED>
     39e:	470d                	li	a4,3
     3a0:	80e18ba3          	sb	a4,-2025(gp) # 20000017 <LIVE>
     3a4:	81818713          	add	a4,gp,-2024 # 20000018 <dotsMem>
     3a8:	80018923          	sb	zero,-2030(gp) # 20000012 <TimerGobeactive>
     3ac:	800189a3          	sb	zero,-2029(gp) # 20000013 <INGAME>
     3b0:	d03a                	sw	a4,32(sp)
     3b2:	4781                	li	a5,0
     3b4:	567d                	li	a2,-1
     3b6:	4725                	li	a4,9
     3b8:	5682                	lw	a3,32(sp)
     3ba:	96be                	add	a3,a3,a5
     3bc:	00c68023          	sb	a2,0(a3)
     3c0:	0785                	add	a5,a5,1
     3c2:	fee79be3          	bne	a5,a4,3b8 <main+0x16a>
     3c6:	80018823          	sb	zero,-2032(gp) # 20000010 <dotscount>
     3ca:	800188a3          	sb	zero,-2031(gp) # 20000011 <Frame>
     3ce:	8161c783          	lbu	a5,-2026(gp) # 20000016 <LEVELSPEED>
     3d2:	567d                	li	a2,-1
     3d4:	0017d713          	srl	a4,a5,0x1
     3d8:	c03e                	sw	a5,0(sp)
     3da:	80e18aa3          	sb	a4,-2027(gp) # 20000015 <GobbingEND>
     3de:	4781                	li	a5,0
     3e0:	4725                	li	a4,9
     3e2:	5682                	lw	a3,32(sp)
     3e4:	96be                	add	a3,a3,a5
     3e6:	00c68023          	sb	a2,0(a3)
     3ea:	0785                	add	a5,a5,1
     3ec:	fee79be3          	bne	a5,a4,3e2 <main+0x194>
     3f0:	80018a23          	sb	zero,-2028(gp) # 20000014 <Gobeactive>
     3f4:	03200713          	li	a4,50
     3f8:	4781                	li	a5,0
     3fa:	03878693          	add	a3,a5,56
     3fe:	968a                	add	a3,a3,sp
     400:	00068023          	sb	zero,0(a3)
     404:	0785                	add	a5,a5,1
     406:	fee79ae3          	bne	a5,a4,3fa <main+0x1ac>
     40a:	054007b7          	lui	a5,0x5400
     40e:	20278793          	add	a5,a5,514 # 5400202 <_data_lma+0x53fe62a>
     412:	04b00713          	li	a4,75
     416:	de3e                	sw	a5,60(sp)
     418:	478d                	li	a5,3
     41a:	04c00693          	li	a3,76
     41e:	4611                	li	a2,4
     420:	04f10023          	sb	a5,64(sp)
     424:	04e10923          	sb	a4,82(sp)
     428:	4785                	li	a5,1
     42a:	4715                	li	a4,5
     42c:	04d00593          	li	a1,77
     430:	02011d23          	sh	zero,58(sp)
     434:	04f10223          	sb	a5,68(sp)
     438:	04d10423          	sb	a3,72(sp)
     43c:	04c10523          	sb	a2,74(sp)
     440:	040101a3          	sb	zero,67(sp)
     444:	04f10723          	sb	a5,78(sp)
     448:	04e10a23          	sb	a4,84(sp)
     44c:	040106a3          	sb	zero,77(sp)
     450:	04f10c23          	sb	a5,88(sp)
     454:	04b10e23          	sb	a1,92(sp)
     458:	04c10f23          	sb	a2,94(sp)
     45c:	04010ba3          	sb	zero,87(sp)
     460:	06f10123          	sb	a5,98(sp)
     464:	06d10323          	sb	a3,102(sp)
     468:	06e10423          	sb	a4,104(sp)
     46c:	060100a3          	sb	zero,97(sp)
     470:	40011737          	lui	a4,0x40011
     474:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     478:	479c                	lw	a5,8(a5)
     47a:	8b91                	and	a5,a5,4
     47c:	c781                	beqz	a5,484 <main+0x236>
     47e:	471c                	lw	a5,8(a4)
     480:	8b85                	and	a5,a5,1
     482:	ef9d                	bnez	a5,4c0 <main+0x272>
     484:	8131c783          	lbu	a5,-2029(gp) # 20000013 <INGAME>
     488:	ef85                	bnez	a5,4c0 <main+0x272>
     48a:	04b00793          	li	a5,75
     48e:	04f10923          	sb	a5,82(sp)
     492:	4791                	li	a5,4
     494:	04c00713          	li	a4,76
     498:	468d                	li	a3,3
     49a:	04f10a23          	sb	a5,84(sp)
     49e:	04d00613          	li	a2,77
     4a2:	06f10423          	sb	a5,104(sp)
     4a6:	4785                	li	a5,1
     4a8:	04e10423          	sb	a4,72(sp)
     4ac:	04d10523          	sb	a3,74(sp)
     4b0:	04c10e23          	sb	a2,92(sp)
     4b4:	04d10f23          	sb	a3,94(sp)
     4b8:	06e10323          	sb	a4,102(sp)
     4bc:	80f189a3          	sb	a5,-2029(gp) # 20000013 <INGAME>
     4c0:	8131c783          	lbu	a5,-2029(gp) # 20000013 <INGAME>
     4c4:	cc3e                	sw	a5,24(sp)
     4c6:	4762                	lw	a4,24(sp)
     4c8:	8111c783          	lbu	a5,-2031(gp) # 20000011 <Frame>
     4cc:	e749                	bnez	a4,556 <main+0x308>
     4ce:	475d                	li	a4,23
     4d0:	1af76963          	bltu	a4,a5,682 <main+0x434>
     4d4:	0785                	add	a5,a5,1
     4d6:	80f188a3          	sb	a5,-2031(gp) # 20000011 <Frame>
     4da:	8111c783          	lbu	a5,-2031(gp) # 20000011 <Frame>
     4de:	776d                	lui	a4,0xffffb
     4e0:	40070713          	add	a4,a4,1024 # ffffb400 <__global_pointer$+0xdfffac00>
     4e4:	c63e                	sw	a5,12(sp)
     4e6:	ca3a                	sw	a4,20(sp)
     4e8:	8b85                	and	a5,a5,1
     4ea:	6705                	lui	a4,0x1
     4ec:	c23e                	sw	a5,4(sp)
     4ee:	34c70713          	add	a4,a4,844 # 134c <back>
     4f2:	200007b7          	lui	a5,0x20000
     4f6:	0007d283          	lhu	t0,0(a5) # 20000000 <rnval>
     4fa:	c402                	sw	zero,8(sp)
     4fc:	183c                	add	a5,sp,56
     4fe:	4601                	li	a2,0
     500:	c83a                	sw	a4,16(sp)
     502:	00878383          	lb	t2,8(a5)
     506:	441d                	li	s0,7
     508:	0067c683          	lbu	a3,6(a5)
     50c:	0ff3f713          	zext.b	a4,t2
     510:	0077c503          	lbu	a0,7(a5)
     514:	0057c583          	lbu	a1,5(a5)
     518:	0047c303          	lbu	t1,4(a5)
     51c:	28e46863          	bltu	s0,a4,7ac <main+0x55e>
     520:	4412                	lw	s0,4(sp)
     522:	18040c63          	beqz	s0,6ba <main+0x46c>
     526:	16060563          	beqz	a2,690 <main+0x442>
     52a:	4402                	lw	s0,0(sp)
     52c:	0a000093          	li	ra,160
     530:	2080e663          	bltu	ra,s0,73c <main+0x4ee>
     534:	4085                	li	ra,1
     536:	18158563          	beq	a1,ra,6c0 <main+0x472>
     53a:	1e058c63          	beqz	a1,732 <main+0x4e4>
     53e:	4412                	lw	s0,4(sp)
     540:	4685                	li	a3,1
     542:	2ad31863          	bne	t1,a3,7f2 <main+0x5a4>
     546:	4699                	li	a3,6
     548:	28a6e863          	bltu	a3,a0,7d8 <main+0x58a>
     54c:	00150713          	add	a4,a0,1
     550:	00e783a3          	sb	a4,7(a5)
     554:	aaf5                	j	750 <main+0x502>
     556:	400116b7          	lui	a3,0x40011
     55a:	4698                	lw	a4,8(a3)
     55c:	8b41                	and	a4,a4,16
     55e:	eb1d                	bnez	a4,594 <main+0x346>
     560:	02010ea3          	sb	zero,61(sp)
     564:	400116b7          	lui	a3,0x40011
     568:	4698                	lw	a4,8(a3)
     56a:	04077713          	and	a4,a4,64
     56e:	eb1d                	bnez	a4,5a4 <main+0x356>
     570:	4705                	li	a4,1
     572:	02e10e23          	sb	a4,60(sp)
     576:	8121c703          	lbu	a4,-2030(gp) # 20000012 <TimerGobeactive>
     57a:	4605                	li	a2,1
     57c:	02e67a63          	bgeu	a2,a4,5b0 <main+0x362>
     580:	177d                	add	a4,a4,-1
     582:	80e18923          	sb	a4,-2030(gp) # 20000012 <TimerGobeactive>
     586:	475d                	li	a4,23
     588:	02f76b63          	bltu	a4,a5,5be <main+0x370>
     58c:	0785                	add	a5,a5,1
     58e:	0ff7f793          	zext.b	a5,a5
     592:	a03d                	j	5c0 <main+0x372>
     594:	4698                	lw	a4,8(a3)
     596:	08077713          	and	a4,a4,128
     59a:	f769                	bnez	a4,564 <main+0x316>
     59c:	4705                	li	a4,1
     59e:	02e10ea3          	sb	a4,61(sp)
     5a2:	b7c9                	j	564 <main+0x316>
     5a4:	4698                	lw	a4,8(a3)
     5a6:	8b21                	and	a4,a4,8
     5a8:	f779                	bnez	a4,576 <main+0x328>
     5aa:	02010e23          	sb	zero,60(sp)
     5ae:	b7e1                	j	576 <main+0x328>
     5b0:	fcc71be3          	bne	a4,a2,586 <main+0x338>
     5b4:	80018923          	sb	zero,-2030(gp) # 20000012 <TimerGobeactive>
     5b8:	80018a23          	sb	zero,-2028(gp) # 20000014 <Gobeactive>
     5bc:	b7e9                	j	586 <main+0x338>
     5be:	4781                	li	a5,0
     5c0:	80f188a3          	sb	a5,-2031(gp) # 20000011 <Frame>
     5c4:	1824                	add	s1,sp,56
     5c6:	1098                	add	a4,sp,96
     5c8:	4681                	li	a3,0
     5ca:	03e14603          	lbu	a2,62(sp)
     5ce:	0104c783          	lbu	a5,16(s1)
     5d2:	00660593          	add	a1,a2,6
     5d6:	04f5cd63          	blt	a1,a5,630 <main+0x3e2>
     5da:	0799                	add	a5,a5,6
     5dc:	04c7ca63          	blt	a5,a2,630 <main+0x3e2>
     5e0:	04010603          	lb	a2,64(sp)
     5e4:	03f14783          	lbu	a5,63(sp)
     5e8:	0114c583          	lbu	a1,17(s1)
     5ec:	060e                	sll	a2,a2,0x3
     5ee:	963e                	add	a2,a2,a5
     5f0:	01248783          	lb	a5,18(s1)
     5f4:	078e                	sll	a5,a5,0x3
     5f6:	97ae                	add	a5,a5,a1
     5f8:	00660593          	add	a1,a2,6
     5fc:	02f5ca63          	blt	a1,a5,630 <main+0x3e2>
     600:	0799                	add	a5,a5,6
     602:	02c7c763          	blt	a5,a2,630 <main+0x3e2>
     606:	8141c783          	lbu	a5,-2028(gp) # 20000014 <Gobeactive>
     60a:	00b4c683          	lbu	a3,11(s1)
     60e:	cfad                	beqz	a5,688 <main+0x43a>
     610:	4785                	li	a5,1
     612:	00f68b63          	beq	a3,a5,628 <main+0x3da>
     616:	06400593          	li	a1,100
     61a:	4551                	li	a0,20
     61c:	3661                	jal	1a4 <JOY_sound>
     61e:	06400593          	li	a1,100
     622:	4509                	li	a0,2
     624:	3641                	jal	1a4 <JOY_sound>
     626:	1098                	add	a4,sp,96
     628:	4785                	li	a5,1
     62a:	00f485a3          	sb	a5,11(s1)
     62e:	4681                	li	a3,0
     630:	04a9                	add	s1,s1,10
     632:	f8971ce3          	bne	a4,s1,5ca <main+0x37c>
     636:	ea0682e3          	beqz	a3,4da <main+0x28c>
     63a:	0c800593          	li	a1,200
     63e:	06400513          	li	a0,100
     642:	368d                	jal	1a4 <JOY_sound>
     644:	0c800593          	li	a1,200
     648:	04b00513          	li	a0,75
     64c:	3ea1                	jal	1a4 <JOY_sound>
     64e:	0c800593          	li	a1,200
     652:	03200513          	li	a0,50
     656:	36b9                	jal	1a4 <JOY_sound>
     658:	0c800593          	li	a1,200
     65c:	4565                	li	a0,25
     65e:	3699                	jal	1a4 <JOY_sound>
     660:	0c800593          	li	a1,200
     664:	4531                	li	a0,12
     666:	3e3d                	jal	1a4 <JOY_sound>
     668:	00494537          	lui	a0,0x494
     66c:	e0050513          	add	a0,a0,-512 # 493e00 <_data_lma+0x492228>
     670:	3e39                	jal	18e <DLY_ticks>
     672:	8171c783          	lbu	a5,-2025(gp) # 20000017 <LIVE>
     676:	d20780e3          	beqz	a5,396 <main+0x148>
     67a:	17fd                	add	a5,a5,-1
     67c:	80f18ba3          	sb	a5,-2025(gp) # 20000017 <LIVE>
     680:	bb85                	j	3f0 <main+0x1a2>
     682:	800188a3          	sb	zero,-2031(gp) # 20000011 <Frame>
     686:	bd91                	j	4da <main+0x28c>
     688:	16fd                	add	a3,a3,-1 # 40010fff <__global_pointer$+0x200107ff>
     68a:	00d036b3          	snez	a3,a3
     68e:	b74d                	j	630 <main+0x3e2>
     690:	4085                	li	ra,1
     692:	02158763          	beq	a1,ra,6c0 <main+0x472>
     696:	12059b63          	bnez	a1,7cc <main+0x57e>
     69a:	04010083          	lb	ra,64(sp)
     69e:	458d                	li	a1,3
     6a0:	08b09963          	bne	ra,a1,732 <main+0x4e4>
     6a4:	03e14083          	lbu	ra,62(sp)
     6a8:	05600593          	li	a1,86
     6ac:	08b09363          	bne	ra,a1,732 <main+0x4e4>
     6b0:	0067c083          	lbu	ra,6(a5)
     6b4:	00739593          	sll	a1,t2,0x7
     6b8:	a829                	j	6d2 <main+0x484>
     6ba:	4405                	li	s0,1
     6bc:	06859963          	bne	a1,s0,72e <main+0x4e0>
     6c0:	00168593          	add	a1,a3,1
     6c4:	00b78323          	sb	a1,6(a5)
     6c8:	0067c083          	lbu	ra,6(a5)
     6cc:	00739593          	sll	a1,t2,0x7
     6d0:	0099                	add	ra,ra,6
     6d2:	4442                	lw	s0,16(sp)
     6d4:	07f00493          	li	s1,127
     6d8:	95a2                	add	a1,a1,s0
     6da:	9586                	add	a1,a1,ra
     6dc:	0005c403          	lbu	s0,0(a1)
     6e0:	0805c083          	lbu	ra,128(a1)
     6e4:	45a1                	li	a1,8
     6e6:	8d89                	sub	a1,a1,a0
     6e8:	40b4d5b3          	sra	a1,s1,a1
     6ec:	00a494b3          	sll	s1,s1,a0
     6f0:	00b0f5b3          	and	a1,ra,a1
     6f4:	8c65                	and	s0,s0,s1
     6f6:	8dc1                	or	a1,a1,s0
     6f8:	cddd                	beqz	a1,7b6 <main+0x568>
     6fa:	c271                	beqz	a2,7be <main+0x570>
     6fc:	45d2                	lw	a1,20(sp)
     6fe:	0012f093          	and	ra,t0,1
     702:	401000b3          	neg	ra,ra
     706:	00b0f0b3          	and	ra,ra,a1
     70a:	0012d593          	srl	a1,t0,0x1
     70e:	00b0c5b3          	xor	a1,ra,a1
     712:	00d78323          	sb	a3,6(a5)
     716:	4692                	lw	a3,4(sp)
     718:	01059293          	sll	t0,a1,0x10
     71c:	8985                	and	a1,a1,1
     71e:	00b782a3          	sb	a1,5(a5)
     722:	0102d293          	srl	t0,t0,0x10
     726:	c6cd                	beqz	a3,7d0 <main+0x582>
     728:	4685                	li	a3,1
     72a:	c436                	sw	a3,8(sp)
     72c:	a821                	j	744 <main+0x4f6>
     72e:	e5d1                	bnez	a1,7ba <main+0x56c>
     730:	d62d                	beqz	a2,69a <main+0x44c>
     732:	fff68593          	add	a1,a3,-1
     736:	00b78323          	sb	a1,6(a5)
     73a:	bf9d                	j	6b0 <main+0x462>
     73c:	4085                	li	ra,1
     73e:	f81585e3          	beq	a1,ra,6c8 <main+0x47a>
     742:	d5bd                	beqz	a1,6b0 <main+0x462>
     744:	4582                	lw	a1,0(sp)
     746:	0a000693          	li	a3,160
     74a:	4405                	li	s0,1
     74c:	deb6fae3          	bgeu	a3,a1,540 <main+0x2f2>
     750:	0a030863          	beqz	t1,800 <main+0x5b2>
     754:	4705                	li	a4,1
     756:	0ee31663          	bne	t1,a4,842 <main+0x5f4>
     75a:	0077c583          	lbu	a1,7(a5)
     75e:	4709                	li	a4,2
     760:	10b76563          	bltu	a4,a1,86a <main+0x61c>
     764:	07f00693          	li	a3,127
     768:	00b696b3          	sll	a3,a3,a1
     76c:	0ff6f693          	zext.b	a3,a3
     770:	4301                	li	t1,0
     772:	00878703          	lb	a4,8(a5)
     776:	0067c583          	lbu	a1,6(a5)
     77a:	3ff00493          	li	s1,1023
     77e:	971a                	add	a4,a4,t1
     780:	071e                	sll	a4,a4,0x7
     782:	6305                	lui	t1,0x1
     784:	972e                	add	a4,a4,a1
     786:	34c30313          	add	t1,t1,844 # 134c <back>
     78a:	459d                	li	a1,7
     78c:	00e4ea63          	bltu	s1,a4,7a0 <main+0x552>
     790:	006700b3          	add	ra,a4,t1
     794:	0000c083          	lbu	ra,0(ra)
     798:	0016f0b3          	and	ra,a3,ra
     79c:	5a009763          	bnez	ra,d4a <i2c_tx.c.06a4ff11+0x14a>
     7a0:	15fd                	add	a1,a1,-1
     7a2:	0ff5f593          	zext.b	a1,a1
     7a6:	0705                	add	a4,a4,1
     7a8:	f1f5                	bnez	a1,78c <main+0x53e>
     7aa:	a861                	j	842 <main+0x5f4>
     7ac:	4405                	li	s0,1
     7ae:	f0858de3          	beq	a1,s0,6c8 <main+0x47a>
     7b2:	ee058fe3          	beqz	a1,6b0 <main+0x462>
     7b6:	4692                	lw	a3,4(sp)
     7b8:	ea89                	bnez	a3,7ca <main+0x57c>
     7ba:	4401                	li	s0,0
     7bc:	b351                	j	540 <main+0x2f2>
     7be:	4589                	li	a1,2
     7c0:	00b782a3          	sb	a1,5(a5)
     7c4:	00d78323          	sb	a3,6(a5)
     7c8:	bb9d                	j	53e <main+0x2f0>
     7ca:	fe2d                	bnez	a2,744 <main+0x4f6>
     7cc:	4405                	li	s0,1
     7ce:	bb8d                	j	540 <main+0x2f2>
     7d0:	4685                	li	a3,1
     7d2:	4401                	li	s0,0
     7d4:	c436                	sw	a3,8(sp)
     7d6:	b3ad                	j	540 <main+0x2f2>
     7d8:	0705                	add	a4,a4,1
     7da:	0762                	sll	a4,a4,0x18
     7dc:	000783a3          	sb	zero,7(a5)
     7e0:	8761                	sra	a4,a4,0x18
     7e2:	46a5                	li	a3,9
     7e4:	00d70563          	beq	a4,a3,7ee <main+0x5a0>
     7e8:	00e78423          	sb	a4,8(a5)
     7ec:	b795                	j	750 <main+0x502>
     7ee:	577d                	li	a4,-1
     7f0:	bfe5                	j	7e8 <main+0x59a>
     7f2:	f4031fe3          	bnez	t1,750 <main+0x502>
     7f6:	cd21                	beqz	a0,84e <main+0x600>
     7f8:	fff50713          	add	a4,a0,-1
     7fc:	00e783a3          	sb	a4,7(a5)
     800:	0077c703          	lbu	a4,7(a5)
     804:	07f00593          	li	a1,127
     808:	0067c683          	lbu	a3,6(a5)
     80c:	00e595b3          	sll	a1,a1,a4
     810:	00878703          	lb	a4,8(a5)
     814:	0ff5f593          	zext.b	a1,a1
     818:	3ff00093          	li	ra,1023
     81c:	071e                	sll	a4,a4,0x7
     81e:	9736                	add	a4,a4,a3
     820:	469d                	li	a3,7
     822:	00e0eb63          	bltu	ra,a4,838 <main+0x5ea>
     826:	44c2                	lw	s1,16(sp)
     828:	00970333          	add	t1,a4,s1
     82c:	00034303          	lbu	t1,0(t1)
     830:	0065f333          	and	t1,a1,t1
     834:	50031b63          	bnez	t1,d4a <i2c_tx.c.06a4ff11+0x14a>
     838:	16fd                	add	a3,a3,-1
     83a:	0ff6f693          	zext.b	a3,a3
     83e:	0705                	add	a4,a4,1
     840:	f2ed                	bnez	a3,822 <main+0x5d4>
     842:	52061c63          	bnez	a2,d7a <i2c_tx.c.06a4ff11+0x17a>
     846:	c81d                	beqz	s0,87c <main+0x62e>
     848:	07a9                	add	a5,a5,10
     84a:	8622                	mv	a2,s0
     84c:	b95d                	j	502 <main+0x2b4>
     84e:	177d                	add	a4,a4,-1
     850:	469d                	li	a3,7
     852:	0762                	sll	a4,a4,0x18
     854:	00d783a3          	sb	a3,7(a5)
     858:	8761                	sra	a4,a4,0x18
     85a:	56f9                	li	a3,-2
     85c:	00d70563          	beq	a4,a3,866 <main+0x618>
     860:	00e78423          	sb	a4,8(a5)
     864:	bf71                	j	800 <main+0x5b2>
     866:	4721                	li	a4,8
     868:	bfe5                	j	860 <main+0x612>
     86a:	4721                	li	a4,8
     86c:	8f0d                	sub	a4,a4,a1
     86e:	07f00693          	li	a3,127
     872:	40e6d6b3          	sra	a3,a3,a4
     876:	0ff6f693          	zext.b	a3,a3
     87a:	bde5                	j	772 <main+0x524>
     87c:	0047c703          	lbu	a4,4(a5)
     880:	4685                	li	a3,1
     882:	04d71163          	bne	a4,a3,8c4 <main+0x676>
     886:	000781a3          	sb	zero,3(a5)
     88a:	0057c703          	lbu	a4,5(a5)
     88e:	4685                	li	a3,1
     890:	02d71f63          	bne	a4,a3,8ce <main+0x680>
     894:	4725                	li	a4,9
     896:	00e781a3          	sb	a4,3(a5)
     89a:	04114683          	lbu	a3,65(sp)
     89e:	03814703          	lbu	a4,56(sp)
     8a2:	1e069b63          	bnez	a3,a98 <main+0x84a>
     8a6:	4685                	li	a3,1
     8a8:	02e6e663          	bltu	a3,a4,8d4 <main+0x686>
     8ac:	0705                	add	a4,a4,1
     8ae:	02e10c23          	sb	a4,56(sp)
     8b2:	a01d                	j	8d8 <main+0x68a>
     8b4:	4709                	li	a4,2
     8b6:	00e78223          	sb	a4,4(a5)
     8ba:	00778423          	sb	t2,8(a5)
     8be:	00a783a3          	sb	a0,7(a5)
     8c2:	b751                	j	846 <main+0x5f8>
     8c4:	f379                	bnez	a4,88a <main+0x63c>
     8c6:	4719                	li	a4,6
     8c8:	00e781a3          	sb	a4,3(a5)
     8cc:	bf7d                	j	88a <main+0x63c>
     8ce:	f771                	bnez	a4,89a <main+0x64c>
     8d0:	470d                	li	a4,3
     8d2:	b7d1                	j	896 <main+0x648>
     8d4:	04d100a3          	sb	a3,65(sp)
     8d8:	0605                	add	a2,a2,1
     8da:	0ff67413          	zext.b	s0,a2
     8de:	4715                	li	a4,5
     8e0:	07a9                	add	a5,a5,10
     8e2:	f6e414e3          	bne	s0,a4,84a <main+0x5fc>
     8e6:	47a2                	lw	a5,8(sp)
     8e8:	c789                	beqz	a5,8f2 <main+0x6a4>
     8ea:	200007b7          	lui	a5,0x20000
     8ee:	00579023          	sh	t0,0(a5) # 20000000 <rnval>
     8f2:	8111c783          	lbu	a5,-2031(gp) # 20000011 <Frame>
     8f6:	4481                	li	s1,0
     8f8:	ce3e                	sw	a5,28(sp)
     8fa:	8b85                	and	a5,a5,1
     8fc:	38079463          	bnez	a5,c84 <i2c_tx.c.06a4ff11+0x84>
     900:	577d                	li	a4,-1
     902:	80e18823          	sb	a4,-2032(gp) # 20000010 <dotscount>
     906:	6785                	lui	a5,0x1
     908:	74c78793          	add	a5,a5,1868 # 174c <BackBlitz>
     90c:	4401                	li	s0,0
     90e:	d23e                	sw	a5,36(sp)
     910:	0ff47793          	zext.b	a5,s0
     914:	c43e                	sw	a5,8(sp)
     916:	30cd                	jal	1f8 <I2C_start.constprop.0>
     918:	4501                	li	a0,0
     91a:	eeaff0ef          	jal	4 <I2C_write>
     91e:	0ff47793          	zext.b	a5,s0
     922:	0b07e513          	or	a0,a5,176
     926:	edeff0ef          	jal	4 <I2C_write>
     92a:	4501                	li	a0,0
     92c:	ed8ff0ef          	jal	4 <I2C_write>
     930:	4541                	li	a0,16
     932:	ed2ff0ef          	jal	4 <I2C_write>
     936:	ee6ff0ef          	jal	1c <I2C_stop>
     93a:	8bfff0ef          	jal	1f8 <I2C_start.constprop.0>
     93e:	04000513          	li	a0,64
     942:	ec2ff0ef          	jal	4 <I2C_write>
     946:	00741793          	sll	a5,s0,0x7
     94a:	6705                	lui	a4,0x1
     94c:	c23e                	sw	a5,4(sp)
     94e:	e6c70713          	add	a4,a4,-404 # e6c <fruits>
     952:	4481                	li	s1,0
     954:	0ff4f793          	zext.b	a5,s1
     958:	d43a                	sw	a4,40(sp)
     95a:	c83e                	sw	a5,16(sp)
     95c:	5712                	lw	a4,36(sp)
     95e:	4792                	lw	a5,4(sp)
     960:	45a2                	lw	a1,8(sp)
     962:	1830                	add	a2,sp,56
     964:	00e786b3          	add	a3,a5,a4
     968:	0006c683          	lbu	a3,0(a3)
     96c:	0ff4f513          	zext.b	a0,s1
     970:	c636                	sw	a3,12(sp)
     972:	f92ff0ef          	jal	104 <SpriteWrite>
     976:	46b2                	lw	a3,12(sp)
     978:	03e14583          	lbu	a1,62(sp)
     97c:	5722                	lw	a4,40(sp)
     97e:	8ec9                	or	a3,a3,a0
     980:	0ff6f793          	zext.b	a5,a3
     984:	ca3e                	sw	a5,20(sp)
     986:	47e2                	lw	a5,24(sp)
     988:	2a078a63          	beqz	a5,c3c <i2c_tx.c.06a4ff11+0x3c>
     98c:	4792                	lw	a5,4(sp)
     98e:	6685                	lui	a3,0x1
     990:	f4c68693          	add	a3,a3,-180 # f4c <dots>
     994:	96be                	add	a3,a3,a5
     996:	0006c783          	lbu	a5,0(a3)
     99a:	c63e                	sw	a5,12(sp)
     99c:	16078663          	beqz	a5,b08 <main+0x8ba>
     9a0:	8101c683          	lbu	a3,-2032(gp) # 20000010 <dotscount>
     9a4:	00168513          	add	a0,a3,1
     9a8:	0ff57613          	zext.b	a2,a0
     9ac:	80c18823          	sb	a2,-2032(gp) # 20000010 <dotscount>
     9b0:	03300513          	li	a0,51
     9b4:	0ec56863          	bltu	a0,a2,aa4 <main+0x856>
     9b8:	fff68513          	add	a0,a3,-1
     9bc:	0ff57513          	zext.b	a0,a0
     9c0:	02f00313          	li	t1,47
     9c4:	0ea36363          	bltu	t1,a0,aaa <main+0x85c>
     9c8:	ff568513          	add	a0,a3,-11
     9cc:	0ff57513          	zext.b	a0,a0
     9d0:	4305                	li	t1,1
     9d2:	0ca37c63          	bgeu	t1,a0,aaa <main+0x85c>
     9d6:	8532                	mv	a0,a2
     9d8:	d63a                	sw	a4,44(sp)
     9da:	da2e                	sw	a1,52(sp)
     9dc:	d836                	sw	a3,48(sp)
     9de:	d432                	sw	a2,40(sp)
     9e0:	e5aff0ef          	jal	3a <checkDotPresent>
     9e4:	5732                	lw	a4,44(sp)
     9e6:	12050163          	beqz	a0,b08 <main+0x8ba>
     9ea:	47c2                	lw	a5,16(sp)
     9ec:	55d2                	lw	a1,52(sp)
     9ee:	02f5f563          	bgeu	a1,a5,a18 <main+0x7ca>
     9f2:	ffb48513          	add	a0,s1,-5
     9f6:	02a5c163          	blt	a1,a0,a18 <main+0x7ca>
     9fa:	04010583          	lb	a1,64(sp)
     9fe:	5622                	lw	a2,40(sp)
     a00:	56c2                	lw	a3,48(sp)
     a02:	10858563          	beq	a1,s0,b0c <main+0x8be>
     a06:	fff40513          	add	a0,s0,-1
     a0a:	00a59763          	bne	a1,a0,a18 <main+0x7ca>
     a0e:	03f14503          	lbu	a0,63(sp)
     a12:	4595                	li	a1,5
     a14:	16a5e863          	bltu	a1,a0,b84 <main+0x936>
     a18:	4532                	lw	a0,12(sp)
     a1a:	47d2                	lw	a5,20(sp)
     a1c:	8171c683          	lbu	a3,-2025(gp) # 20000017 <LIVE>
     a20:	8d5d                	or	a0,a0,a5
     a22:	00148793          	add	a5,s1,1
     a26:	c63e                	sw	a5,12(sp)
     a28:	00170793          	add	a5,a4,1
     a2c:	c83e                	sw	a5,16(sp)
     a2e:	4792                	lw	a5,4(sp)
     a30:	0ff57513          	zext.b	a0,a0
     a34:	0785                	add	a5,a5,1
     a36:	ca3e                	sw	a5,20(sp)
     a38:	47a2                	lw	a5,8(sp)
     a3a:	18d7f963          	bgeu	a5,a3,bcc <main+0x97e>
     a3e:	469d                	li	a3,7
     a40:	1696f463          	bgeu	a3,s1,ba8 <main+0x95a>
     a44:	4619                	li	a2,6
     a46:	00c40763          	beq	s0,a2,a54 <main+0x806>
     a4a:	00d78563          	beq	a5,a3,a54 <main+0x806>
     a4e:	4691                	li	a3,4
     a50:	18d41863          	bne	s0,a3,be0 <main+0x992>
     a54:	c63a                	sw	a4,12(sp)
     a56:	daeff0ef          	jal	4 <I2C_write>
     a5a:	4792                	lw	a5,4(sp)
     a5c:	4732                	lw	a4,12(sp)
     a5e:	0485                	add	s1,s1,1
     a60:	0785                	add	a5,a5,1
     a62:	c23e                	sw	a5,4(sp)
     a64:	08000693          	li	a3,128
     a68:	0705                	add	a4,a4,1
     a6a:	eed495e3          	bne	s1,a3,954 <main+0x706>
     a6e:	daeff0ef          	jal	1c <I2C_stop>
     a72:	0405                	add	s0,s0,1
     a74:	47a1                	li	a5,8
     a76:	e8f41de3          	bne	s0,a5,910 <main+0x6c2>
     a7a:	4762                	lw	a4,24(sp)
     a7c:	8141c483          	lbu	s1,-2028(gp) # 20000014 <Gobeactive>
     a80:	4785                	li	a5,1
     a82:	1cf70463          	beq	a4,a5,c4a <i2c_tx.c.06a4ff11+0x4a>
     a86:	2a049863          	bnez	s1,d36 <i2c_tx.c.06a4ff11+0x136>
     a8a:	0003b537          	lui	a0,0x3b
     a8e:	98050513          	add	a0,a0,-1664 # 3a980 <_data_lma+0x38da8>
     a92:	efcff0ef          	jal	18e <DLY_ticks>
     a96:	bae9                	j	470 <main+0x222>
     a98:	c319                	beqz	a4,a9e <main+0x850>
     a9a:	177d                	add	a4,a4,-1
     a9c:	bd09                	j	8ae <main+0x660>
     a9e:	040100a3          	sb	zero,65(sp)
     aa2:	bd1d                	j	8d8 <main+0x68a>
     aa4:	fc368513          	add	a0,a3,-61
     aa8:	b715                	j	9cc <main+0x77e>
     aaa:	8532                	mv	a0,a2
     aac:	d63a                	sw	a4,44(sp)
     aae:	da2e                	sw	a1,52(sp)
     ab0:	d836                	sw	a3,48(sp)
     ab2:	d432                	sw	a2,40(sp)
     ab4:	d86ff0ef          	jal	3a <checkDotPresent>
     ab8:	5732                	lw	a4,44(sp)
     aba:	c90d                	beqz	a0,aec <main+0x89e>
     abc:	47c2                	lw	a5,16(sp)
     abe:	55d2                	lw	a1,52(sp)
     ac0:	02f5f563          	bgeu	a1,a5,aea <main+0x89c>
     ac4:	ffb48513          	add	a0,s1,-5
     ac8:	02a5c163          	blt	a1,a0,aea <main+0x89c>
     acc:	04010583          	lb	a1,64(sp)
     ad0:	5622                	lw	a2,40(sp)
     ad2:	56c2                	lw	a3,48(sp)
     ad4:	04858763          	beq	a1,s0,b22 <main+0x8d4>
     ad8:	fff40513          	add	a0,s0,-1
     adc:	00a59763          	bne	a1,a0,aea <main+0x89c>
     ae0:	03f14503          	lbu	a0,63(sp)
     ae4:	4595                	li	a1,5
     ae6:	0aa5e163          	bltu	a1,a0,b88 <main+0x93a>
     aea:	4532                	lw	a0,12(sp)
     aec:	47f2                	lw	a5,28(sp)
     aee:	4619                	li	a2,6
     af0:	ffa78693          	add	a3,a5,-6
     af4:	0ff6f693          	zext.b	a3,a3
     af8:	00d67863          	bgeu	a2,a3,b08 <main+0x8ba>
     afc:	fee78693          	add	a3,a5,-18
     b00:	0ff6f693          	zext.b	a3,a3
     b04:	f0d66be3          	bltu	a2,a3,a1a <main+0x7cc>
     b08:	4501                	li	a0,0
     b0a:	bf01                	j	a1a <main+0x7cc>
     b0c:	03f14503          	lbu	a0,63(sp)
     b10:	4595                	li	a1,5
     b12:	06a5f963          	bgeu	a1,a0,b84 <main+0x936>
     b16:	fff40593          	add	a1,s0,-1
     b1a:	ee859fe3          	bne	a1,s0,a18 <main+0x7ca>
     b1e:	4581                	li	a1,0
     b20:	a819                	j	b36 <main+0x8e8>
     b22:	03f14503          	lbu	a0,63(sp)
     b26:	4595                	li	a1,5
     b28:	06a5f063          	bgeu	a1,a0,b88 <main+0x93a>
     b2c:	fff40593          	add	a1,s0,-1
     b30:	fab41de3          	bne	s0,a1,aea <main+0x89c>
     b34:	4585                	li	a1,1
     b36:	03f14303          	lbu	t1,63(sp)
     b3a:	4515                	li	a0,5
     b3c:	06657463          	bgeu	a0,t1,ba4 <main+0x956>
     b40:	0f867513          	and	a0,a2,248
     b44:	40a68533          	sub	a0,a3,a0
     b48:	00365313          	srl	t1,a2,0x3
     b4c:	0ff57513          	zext.b	a0,a0
     b50:	4619                	li	a2,6
     b52:	07f00693          	li	a3,127
     b56:	00a66963          	bltu	a2,a0,b68 <main+0x91a>
     b5a:	200006b7          	lui	a3,0x20000
     b5e:	00868693          	add	a3,a3,8 # 20000008 <CSWTCH.104>
     b62:	96aa                	add	a3,a3,a0
     b64:	0006c683          	lbu	a3,0(a3)
     b68:	5782                	lw	a5,32(sp)
     b6a:	933e                	add	t1,t1,a5
     b6c:	00034603          	lbu	a2,0(t1)
     b70:	8ef1                	and	a3,a3,a2
     b72:	00d30023          	sb	a3,0(t1)
     b76:	c999                	beqz	a1,b8c <main+0x93e>
     b78:	4782                	lw	a5,0(sp)
     b7a:	80f18923          	sb	a5,-2030(gp) # 20000012 <TimerGobeactive>
     b7e:	80b18a23          	sb	a1,-2028(gp) # 20000014 <Gobeactive>
     b82:	b7a5                	j	aea <main+0x89c>
     b84:	4581                	li	a1,0
     b86:	bf6d                	j	b40 <main+0x8f2>
     b88:	4585                	li	a1,1
     b8a:	bf5d                	j	b40 <main+0x8f2>
     b8c:	45a9                	li	a1,10
     b8e:	4529                	li	a0,10
     b90:	c83a                	sw	a4,16(sp)
     b92:	e12ff0ef          	jal	1a4 <JOY_sound>
     b96:	45a9                	li	a1,10
     b98:	03200513          	li	a0,50
     b9c:	e08ff0ef          	jal	1a4 <JOY_sound>
     ba0:	4742                	lw	a4,16(sp)
     ba2:	bd9d                	j	a18 <main+0x7ca>
     ba4:	f1b9                	bnez	a1,aea <main+0x89c>
     ba6:	bd8d                	j	a18 <main+0x7ca>
     ba8:	6685                	lui	a3,0x1
     baa:	e8c68693          	add	a3,a3,-372 # e8c <caracters>
     bae:	96a6                	add	a3,a3,s1
     bb0:	0086c683          	lbu	a3,8(a3)
     bb4:	8d55                	or	a0,a0,a3
     bb6:	4699                	li	a3,6
     bb8:	00d41d63          	bne	s0,a3,bd2 <main+0x984>
     bbc:	4782                	lw	a5,0(sp)
     bbe:	0be00693          	li	a3,190
     bc2:	e8f6e9e3          	bltu	a3,a5,a54 <main+0x806>
     bc6:	00874783          	lbu	a5,8(a4)
     bca:	a835                	j	c06 <i2c_tx.c.06a4ff11+0x6>
     bcc:	4699                	li	a3,6
     bce:	04d40463          	beq	s0,a3,c16 <i2c_tx.c.06a4ff11+0x16>
     bd2:	47a2                	lw	a5,8(sp)
     bd4:	469d                	li	a3,7
     bd6:	02d78363          	beq	a5,a3,bfc <main+0x9ae>
     bda:	4611                	li	a2,4
     bdc:	04c40663          	beq	s0,a2,c28 <i2c_tx.c.06a4ff11+0x28>
     be0:	4695                	li	a3,5
     be2:	e6d419e3          	bne	s0,a3,a54 <main+0x806>
     be6:	4782                	lw	a5,0(sp)
     be8:	0b400693          	li	a3,180
     bec:	e6f6e4e3          	bltu	a3,a5,a54 <main+0x806>
     bf0:	469d                	li	a3,7
     bf2:	e696e1e3          	bltu	a3,s1,a54 <main+0x806>
     bf6:	01074783          	lbu	a5,16(a4)
     bfa:	a031                	j	c06 <i2c_tx.c.06a4ff11+0x6>
     bfc:	47a2                	lw	a5,8(sp)
     bfe:	e497ebe3          	bltu	a5,s1,a54 <main+0x806>
     c02:	00074783          	lbu	a5,0(a4)
     c06:	8d5d                	or	a0,a0,a5
     c08:	bfcff0ef          	jal	4 <I2C_write>
     c0c:	47d2                	lw	a5,20(sp)
     c0e:	44b2                	lw	s1,12(sp)
     c10:	4742                	lw	a4,16(sp)
     c12:	c23e                	sw	a5,4(sp)
     c14:	b381                	j	954 <main+0x706>
     c16:	4782                	lw	a5,0(sp)
     c18:	0be00693          	li	a3,190
     c1c:	e2f6ece3          	bltu	a3,a5,a54 <main+0x806>
     c20:	469d                	li	a3,7
     c22:	e296e9e3          	bltu	a3,s1,a54 <main+0x806>
     c26:	b745                	j	bc6 <main+0x978>
     c28:	4782                	lw	a5,0(sp)
     c2a:	0aa00613          	li	a2,170
     c2e:	e2f663e3          	bltu	a2,a5,a54 <main+0x806>
     c32:	e296e1e3          	bltu	a3,s1,a54 <main+0x806>
     c36:	01874783          	lbu	a5,24(a4)
     c3a:	b7f1                	j	c06 <i2c_tx.c.06a4ff11+0x6>
     c3c:	47d2                	lw	a5,20(sp)
     c3e:	c63a                	sw	a4,12(sp)
     c40:	fff7c513          	not	a0,a5
     c44:	0ff57513          	zext.b	a0,a0
     c48:	b539                	j	a56 <main+0x808>
     c4a:	6409                	lui	s0,0x2
     c4c:	b4c40413          	add	s0,s0,-1204 # 1b4c <Music>
     c50:	00144583          	lbu	a1,1(s0)
     c54:	00044503          	lbu	a0,0(s0)
     c58:	0409                	add	s0,s0,2
     c5a:	f9c58593          	add	a1,a1,-100
     c5e:	1561                	add	a0,a0,-8
     c60:	0ff5f593          	zext.b	a1,a1
     c64:	0ff57513          	zext.b	a0,a0
     c68:	d3cff0ef          	jal	1a4 <JOY_sound>
     c6c:	6789                	lui	a5,0x2
     c6e:	bd878793          	add	a5,a5,-1064 # 1bd8 <_data_lma>
     c72:	fc879fe3          	bne	a5,s0,c50 <i2c_tx.c.06a4ff11+0x50>
     c76:	4709                	li	a4,2
     c78:	80e189a3          	sb	a4,-2029(gp) # 20000013 <INGAME>
     c7c:	b529                	j	a86 <main+0x838>
     c7e:	0485                	add	s1,s1,1
     c80:	0ff4f493          	zext.b	s1,s1
     c84:	8526                	mv	a0,s1
     c86:	bb4ff0ef          	jal	3a <checkDotPresent>
     c8a:	03e00793          	li	a5,62
     c8e:	de051ee3          	bnez	a0,a8a <main+0x83c>
     c92:	fef496e3          	bne	s1,a5,c7e <i2c_tx.c.06a4ff11+0x7e>
     c96:	4489                	li	s1,2
     c98:	8526                	mv	a0,s1
     c9a:	45a9                	li	a1,10
     c9c:	d08ff0ef          	jal	1a4 <JOY_sound>
     ca0:	4505                	li	a0,1
     ca2:	8d05                	sub	a0,a0,s1
     ca4:	45d1                	li	a1,20
     ca6:	0ff57513          	zext.b	a0,a0
     caa:	cfaff0ef          	jal	1a4 <JOY_sound>
     cae:	0485                	add	s1,s1,1
     cb0:	0ff4f493          	zext.b	s1,s1
     cb4:	03e00793          	li	a5,62
     cb8:	fef490e3          	bne	s1,a5,c98 <i2c_tx.c.06a4ff11+0x98>
     cbc:	00b72537          	lui	a0,0xb72
     cc0:	b0050513          	add	a0,a0,-1280 # b71b00 <_data_lma+0xb6ff28>
     cc4:	ccaff0ef          	jal	18e <DLY_ticks>
     cc8:	4782                	lw	a5,0(sp)
     cca:	4729                	li	a4,10
     ccc:	f0f77163          	bgeu	a4,a5,3ce <main+0x180>
     cd0:	4782                	lw	a5,0(sp)
     cd2:	17d9                	add	a5,a5,-10
     cd4:	0ff7f793          	zext.b	a5,a5
     cd8:	80f18b23          	sb	a5,-2026(gp) # 20000016 <LEVELSPEED>
     cdc:	0a000693          	li	a3,160
     ce0:	02d78063          	beq	a5,a3,d00 <i2c_tx.c.06a4ff11+0x100>
     ce4:	07800693          	li	a3,120
     ce8:	00d78c63          	beq	a5,a3,d00 <i2c_tx.c.06a4ff11+0x100>
     cec:	05000693          	li	a3,80
     cf0:	00d78863          	beq	a5,a3,d00 <i2c_tx.c.06a4ff11+0x100>
     cf4:	02800693          	li	a3,40
     cf8:	00d78463          	beq	a5,a3,d00 <i2c_tx.c.06a4ff11+0x100>
     cfc:	ece79963          	bne	a5,a4,3ce <main+0x180>
     d00:	8171c783          	lbu	a5,-2025(gp) # 20000017 <LIVE>
     d04:	4689                	li	a3,2
     d06:	ecf6e463          	bltu	a3,a5,3ce <main+0x180>
     d0a:	0785                	add	a5,a5,1
     d0c:	0036f4b7          	lui	s1,0x36f
     d10:	80f18ba3          	sb	a5,-2025(gp) # 20000017 <LIVE>
     d14:	e8048493          	add	s1,s1,-384 # 36ee80 <_data_lma+0x36d2a8>
     d18:	06400593          	li	a1,100
     d1c:	05000513          	li	a0,80
     d20:	c84ff0ef          	jal	1a4 <JOY_sound>
     d24:	147d                	add	s0,s0,-1
     d26:	8526                	mv	a0,s1
     d28:	0ff47413          	zext.b	s0,s0
     d2c:	c62ff0ef          	jal	18e <DLY_ticks>
     d30:	f465                	bnez	s0,d18 <i2c_tx.c.06a4ff11+0x118>
     d32:	e9cff06f          	j	3ce <main+0x180>
     d36:	8121c503          	lbu	a0,-2030(gp) # 20000012 <TimerGobeactive>
     d3a:	4585                	li	a1,1
     d3c:	fff54513          	not	a0,a0
     d40:	0ff57513          	zext.b	a0,a0
     d44:	c60ff0ef          	jal	1a4 <JOY_sound>
     d48:	b389                	j	a8a <main+0x83c>
     d4a:	b60605e3          	beqz	a2,8b4 <main+0x666>
     d4e:	4752                	lw	a4,20(sp)
     d50:	0012f693          	and	a3,t0,1
     d54:	40d006b3          	neg	a3,a3
     d58:	8ef9                	and	a3,a3,a4
     d5a:	0012d713          	srl	a4,t0,0x1
     d5e:	8f35                	xor	a4,a4,a3
     d60:	01071293          	sll	t0,a4,0x10
     d64:	8b05                	and	a4,a4,1
     d66:	00e78223          	sb	a4,4(a5)
     d6a:	4705                	li	a4,1
     d6c:	0102d293          	srl	t0,t0,0x10
     d70:	00778423          	sb	t2,8(a5)
     d74:	00a783a3          	sb	a0,7(a5)
     d78:	c43a                	sw	a4,8(sp)
     d7a:	4732                	lw	a4,12(sp)
     d7c:	c709                	beqz	a4,d86 <i2c_tx.c.06a4ff11+0x186>
     d7e:	46b2                	lw	a3,12(sp)
     d80:	4731                	li	a4,12
     d82:	00e69a63          	bne	a3,a4,d96 <i2c_tx.c.06a4ff11+0x196>
     d86:	0047c703          	lbu	a4,4(a5)
     d8a:	000781a3          	sb	zero,3(a5)
     d8e:	e701                	bnez	a4,d96 <i2c_tx.c.06a4ff11+0x196>
     d90:	4709                	li	a4,2
     d92:	00e781a3          	sb	a4,3(a5)
     d96:	0017c703          	lbu	a4,1(a5)
     d9a:	4685                	li	a3,1
     d9c:	02d71463          	bne	a4,a3,dc4 <i2c_tx.c.06a4ff11+0x1c4>
     da0:	0067c703          	lbu	a4,6(a5)
     da4:	4689                	li	a3,2
     da6:	fb670713          	add	a4,a4,-74
     daa:	0ff77713          	zext.b	a4,a4
     dae:	00e6eb63          	bltu	a3,a4,dc4 <i2c_tx.c.06a4ff11+0x1c4>
     db2:	0087c703          	lbu	a4,8(a5)
     db6:	1779                	add	a4,a4,-2
     db8:	0ff77713          	zext.b	a4,a4
     dbc:	00e6e463          	bltu	a3,a4,dc4 <i2c_tx.c.06a4ff11+0x1c4>
     dc0:	000780a3          	sb	zero,1(a5)
     dc4:	b0041ae3          	bnez	s0,8d8 <main+0x68a>
     dc8:	0007c703          	lbu	a4,0(a5)
     dcc:	00173713          	seqz	a4,a4
     dd0:	00e78023          	sb	a4,0(a5)
     dd4:	b611                	j	8d8 <main+0x68a>

00000dd6 <reset_handler>:
     dd6:	24e00793          	li	a5,590
     dda:	20000197          	auipc	gp,0x20000
     dde:	a2618193          	add	gp,gp,-1498 # 20000800 <__global_pointer$>
     de2:	00018113          	mv	sp,gp
     de6:	08800513          	li	a0,136
     dea:	30051073          	csrw	mstatus,a0
     dee:	458d                	li	a1,3
     df0:	80459073          	csrw	0x804,a1
     df4:	fffff517          	auipc	a0,0xfffff
     df8:	20c50513          	add	a0,a0,524 # 0 <jump_reset>
     dfc:	8d4d                	or	a0,a0,a1
     dfe:	30551073          	csrw	mtvec,a0
     e02:	34179073          	csrw	mepc,a5
     e06:	6709                	lui	a4,0x2
     e08:	200007b7          	lui	a5,0x20000
     e0c:	bd870713          	add	a4,a4,-1064 # 1bd8 <_data_lma>
     e10:	00078793          	mv	a5,a5
     e14:	81018693          	add	a3,gp,-2032 # 20000010 <dotscount>
     e18:	02d7e663          	bltu	a5,a3,e44 <reset_handler+0x6e>
     e1c:	81018793          	add	a5,gp,-2032 # 20000010 <dotscount>
     e20:	82418713          	add	a4,gp,-2012 # 20000024 <_ebss>
     e24:	02e7e563          	bltu	a5,a4,e4e <reset_handler+0x78>
     e28:	400217b7          	lui	a5,0x40021
     e2c:	4741                	li	a4,16
     e2e:	c3d8                	sw	a4,4(a5)
     e30:	4695                	li	a3,5
     e32:	e000f737          	lui	a4,0xe000f
     e36:	c314                	sw	a3,0(a4)
     e38:	4f98                	lw	a4,24(a5)
     e3a:	03476713          	or	a4,a4,52
     e3e:	cf98                	sw	a4,24(a5)
     e40:	30200073          	mret
     e44:	4310                	lw	a2,0(a4)
     e46:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
     e48:	c390                	sw	a2,0(a5)
     e4a:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
     e4c:	b7f1                	j	e18 <reset_handler+0x42>
     e4e:	0007a023          	sw	zero,0(a5)
     e52:	0791                	add	a5,a5,4
     e54:	bfc1                	j	e24 <reset_handler+0x4e>
	...

00000e58 <OLED_INIT_CMD>:
     e58:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
     e68:	00af 0000                                   ....

00000e6c <fruits>:
     e6c:	f660 6fff 5846 c0f0 361c 5f3f 3f77 3b1e     `..oFX...6?_w?.;
     e7c:	6c38 7c5c 3838 6010 7e1f b058 e0e0 4040     8l\|88.`.~X...@@

00000e8c <caracters>:
     e8c:	3e1c 7f7f 367f 001c 3e1c 037f 367f 001c     .>...6...>...6..
     e9c:	3e1c 030f 360f 001c 2200 7563 3e77 001c     .>...6..."cuw>..
     eac:	3614 7577 3e77 001c 3e1c 7d7f 3e7f 001c     .6wuw>...>.}.>..
     ebc:	3e1c 7f7f 367f 001c 3e1c 607f 367f 001c     .>...6...>.`.6..
     ecc:	3e1c 6078 3678 001c 3e1c 7d7f 3e7f 001c     .>x`x6...>.}.>..
     edc:	3e1c 7577 3677 0014 3e1c 7577 2263 0000     .>wuw6...>wuc"..
     eec:	7f2d 5b7f 7f7f 003e 7f5a 5b7f 7f7f 003e     -..[..>.Z..[..>.
     efc:	7f2d 7f7f 7f6d 003e 7f5a 7f7f 7f6d 003e     -...m.>.Z...m.>.
     f0c:	772d 6541 4141 003e 775a 6541 4141 003e     -wAeAA>.ZwAeAA>.
     f1c:	772d 4141 4153 003e 775a 4141 4153 003e     -wAASA>.ZwAASA>.
     f2c:	0000 0000 0024 0000 0000 0000 0024 0000     ....$.......$...
     f3c:	0000 0000 0012 0000 0000 0000 0012 0000     ................

00000f4c <dots>:
	...
     fdc:	0600 0006 0000 0000 0000 0002 0000 0000     ................
     fec:	0000 0200 0000 0000 0000 0000 0002 0000     ................
     ffc:	0000 0000 0200 0000 0000 0000 0000 0002     ................
    100c:	0000 0000 0000 0200 0000 0000 0000 0000     ................
    101c:	0002 0000 0000 0000 0200 0000 0000 0000     ................
    102c:	0000 0200 0000 0000 0000 0000 0200 0000     ................
    103c:	0000 0000 0000 0600 0006 0000 0000 0000     ................
	...
    105c:	0400 0000 0000 0000 0000 0000 0000 0000     ................
    106c:	0000 0400 0000 0000 0000 0000 0000 0800     ................
	...
    1084:	0800 0000 0000 0000 0000 0800 0000 0000     ................
	...
    10a4:	0800 0000 0000 0000 0000 0800 0000 0000     ................
    10b4:	0000 0000 0400 0000 0000 0000 0000 0400     ................
	...
    10dc:	0800 0000 0000 0000 0000 0008 0000 0000     ................
    10ec:	0000 0800 0000 0000 0000 0000 0000 0800     ................
	...
    1104:	0800 0000 0000 0000 0000 0000 0000 0000     ................
	...
    1124:	0800 0000 0000 0000 0000 0800 0000 0000     ................
    1134:	0000 0000 0800 0000 0000 0000 0000 0800     ................
	...
    115c:	2000 0000 0000 0000 0000 0020 0000 0000     . ........ .....
    116c:	0000 2000 0000 0000 0000 0000 0000 2000     ... ........... 
	...
    1184:	2000 0000 0000 0000 0000 0000 0000 0000     . ..............
	...
    11a4:	2000 0000 0000 0000 0000 2000 0000 0000     . ......... ....
    11b4:	0000 0000 2000 0000 0000 0000 0000 2000     ..... ......... 
	...
    11dc:	4000 0000 0000 0000 0000 0000 0000 0000     .@..............
    11ec:	0000 4000 0000 0000 0000 0000 0000 2000     ...@........... 
	...
    1204:	2000 0000 0000 0000 0000 2000 0000 0000     . ......... ....
	...
    1224:	2000 0000 0000 0000 0000 2000 0000 0000     . ......... ....
    1234:	0000 0000 4000 0000 0000 0000 0000 4000     .....@.........@
	...
    125c:	c000 00c0 0000 0000 0000 0080 0000 0000     ................
    126c:	0000 8000 0000 0000 0000 0000 0080 0000     ................
    127c:	0000 0000 8000 0000 0000 0000 0000 0080     ................
    128c:	0000 0000 0000 8000 0000 0000 0000 0000     ................
    129c:	0080 0000 0000 0000 8000 0000 0000 0000     ................
    12ac:	0000 8000 0000 0000 0000 0000 8000 0000     ................
    12bc:	0000 0000 0000 c000 00c0 0000 0000 0000     ................
	...

0000134c <back>:
	...
    1354:	0000 fcf8 ec0c 2c2c 2c2c 2c2c 2c2c 2c2c     ......,,,,,,,,,,
    1364:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    1374:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    1384:	2c2c 2c2c 2e2e 3e20 0000 0000 0000 3e00     ,,,,.. >.......>
    1394:	2e20 2c2e 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c      ..,,,,,,,,,,,,,
    13a4:	2c2c 2c2c ec2c ec0c 2c2c 2c2c 2c2c 2c2c     ,,,,,...,,,,,,,,
    13b4:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    13c4:	2c2c ec2c fc0c 00f8 0000 0000 0000 0000     ,,,.............
    13d4:	0000 ffff ff00 0000 0000 0000 e000 a020     .............. .
    13e4:	a0a0 a0a0 20a0 00e0 0000 0000 0000 a0e0     ..... ..........
    13f4:	a0a0 a0a0 a0a0 a0a0 a0a0 a0a0 a0a0 a0a0     ................
    1404:	a0a0 a0a0 a0a0 e0a0 0000 0000 0000 e000     ................
    1414:	a020 a0a0 a0a0 a0a0 a0a0 a0a0 e020 0000      ........... ...
    1424:	0000 0000 ff00 bf80 a0a0 a0a0 a0a0 a0a0     ................
    1434:	e020 0000 0000 0000 e000 e020 0000 0000      ......... .....
    1444:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    1454:	0000 ffff ff00 0000 0000 0000 ff00 bf80     ................
    1464:	bfbf bfbf 80bf 00ff 0000 0000 0000 8080     ................
    1474:	8080 8080 0000 0000 0000 8000 8080 0000     ................
    1484:	0000 0000 8000 8080 0000 0000 0000 ff00     ................
    1494:	ff00 0000 0000 0000 0000 ff00 ff00 0000     ................
    14a4:	0000 0000 8000 8080 0000 0000 0000 ff00     ................
    14b4:	ff80 0000 0000 0000 ff00 ff80 0000 0000     ................
    14c4:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    14d4:	0000 ffff ff00 8080 8080 8080 8080 8080     ................
    14e4:	8080 8080 8080 0080 0000 0000 0000 00ff     ................
    14f4:	fefe ff00 0000 0000 0000 1f00 1f10 0000     ................
    1504:	0000 0000 ff00 ff00 0000 0000 0000 ff00     ................
    1514:	ff00 0000 0000 0000 0000 0f00 0f08 0000     ................
    1524:	0000 0000 ff00 ff00 8080 8080 8080 8080     ................
    1534:	8080 0000 0000 0000 8000 8080 8080 8080     ................
    1544:	8080 ff80 ff00 00ff 0000 0000 0000 0000     ................
    1554:	0000 ffff fe00 0202 0202 0202 0202 0202     ................
    1564:	0202 0202 0202 0003 0000 0000 0000 00ff     ................
    1574:	ffff ff00 0000 0000 0000 f000 f010 0000     ................
    1584:	0000 0000 ff00 ff00 0000 0000 0000 ff00     ................
    1594:	ff00 0000 0000 0000 0000 e000 e020 0000     ............ ...
    15a4:	0000 0000 ff00 fe00 0202 0202 0202 0202     ................
    15b4:	0302 0000 0000 0000 0300 0202 0202 0202     ................
    15c4:	0202 fe02 ff00 00ff 0000 0000 0000 0000     ................
    15d4:	0000 ffff ff00 0000 0000 0000 fe00 fa02     ................
    15e4:	fafa fafa 02fa 00fe 0000 0000 0000 0203     ................
    15f4:	0202 0302 0000 0000 0000 0300 0302 0000     ................
    1604:	0000 0000 0300 0302 0000 0000 0000 ff00     ................
    1614:	ff00 0000 0000 0000 0000 ff00 ff00 0000     ................
    1624:	0000 0000 0300 0302 0000 0000 0000 fe00     ................
    1634:	fe02 0000 0000 0000 fe00 fe02 0000 0000     ................
    1644:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    1654:	0000 ffff ff00 0000 0000 0000 0f00 0b08     ................
    1664:	0b0b 0b0b 080b 000f 0000 0000 0000 0a0e     ................
    1674:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
    1684:	0a0a 0a0a 0a0a 0e0a 0000 0000 0000 0f00     ................
    1694:	0b08 0a0a 0a0a 0a0a 0a0a 0b0a 0f08 0000     ................
    16a4:	0000 0000 fe00 fa02 0a0a 0a0a 0a0a 0b0a     ................
    16b4:	0f08 0000 0000 0000 0f00 0f08 0000 0000     ................
    16c4:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    16d4:	0000 7f3f 6f60 6868 6868 6868 6868 6868     ..?.`ohhhhhhhhhh
    16e4:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    16f4:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    1704:	6868 6868 e8e8 f808 0000 0000 0000 f800     hhhh............
    1714:	e808 68e8 6868 6868 6868 6868 6868 6868     ...hhhhhhhhhhhhh
    1724:	6868 6868 6f68 6f60 6868 6868 6868 6868     hhhhho`ohhhhhhhh
    1734:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    1744:	6868 6f68 7f60 003f                         hhho`.?.

0000174c <BackBlitz>:
	...
    1754:	0000 f8f0 cc1c 2c2c 2c2c 2c2c 2c2c 2c2c     ......,,,,,,,,,,
    1764:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    1774:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    1784:	2c2c 2c2c 2e2e 1e20 0000 0000 0000 1e00     ,,,,.. .........
    1794:	2e20 2c2e 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c      ..,,,,,,,,,,,,,
    17a4:	2c2c 2c2c ec2c ec0c 2c2c 2c2c 2c2c 2c2c     ,,,,,...,,,,,,,,
    17b4:	2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c 2c2c     ,,,,,,,,,,,,,,,,
    17c4:	2c2c cc2c f81c 00f0 0000 0000 0000 0000     ,,,.............
    17d4:	0000 ffff ff00 0000 0000 0000 c000 a020     .............. .
    17e4:	a0a0 a0a0 20a0 00c0 0000 0000 0000 a040     ..... ........@.
    17f4:	a0a0 a0a0 a0a0 a0a0 a0a0 a0a0 a0a0 a0a0     ................
    1804:	a0a0 a0a0 a0a0 40a0 0000 0000 0000 c000     .......@........
    1814:	a020 a0a0 a0a0 a0a0 a0a0 a0a0 c020 0000      ........... ...
    1824:	0000 0000 7f00 bf80 a0a0 a0a0 a0a0 a0a0     ................
    1834:	c020 0000 0000 0000 c000 c020 0000 0000      ......... .....
    1844:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    1854:	0000 ffff ff00 0000 0000 0000 7f00 bf80     ................
    1864:	bfbf bfbf 80bf 007f 0000 0000 0000 8000     ................
    1874:	8080 0080 0000 0000 0000 0000 0080 0000     ................
    1884:	0000 0000 0000 0080 0000 0000 0000 ff00     ................
    1894:	ff00 0000 0000 0000 0000 ff00 ff00 0000     ................
    18a4:	0000 0000 0000 0080 0000 0000 0000 7f00     ................
    18b4:	7f80 0000 0000 0000 7f00 7f80 0000 0000     ................
    18c4:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    18d4:	0000 ffff ff00 8080 8080 8080 8080 8080     ................
    18e4:	8080 8080 8080 0000 0000 0000 0000 00ff     ................
    18f4:	fefe ff00 0000 0000 0000 0f00 0f10 0000     ................
    1904:	0000 0000 ff00 ff00 0000 0000 0000 ff00     ................
    1914:	ff00 0000 0000 0000 0000 0700 07a8 0000     ................
    1924:	0000 0000 ff00 ff00 8080 8080 8080 8080     ................
    1934:	0080 0000 0000 0000 0000 8080 8080 8080     ................
    1944:	8080 ff80 ff00 00ff 0000 0000 0000 0000     ................
    1954:	0000 ffff fe00 0202 0202 0202 0202 0202     ................
    1964:	0202 0202 0202 0001 0000 0000 0000 00ff     ................
    1974:	ffff ff00 0000 0000 0000 e000 e010 0000     ................
    1984:	0000 0000 ff00 ff00 0000 0000 0000 ff00     ................
    1994:	ff00 0000 0000 0000 0000 c000 c02a 0000     ............*...
    19a4:	0000 0000 ff00 fe00 0202 0202 0202 0202     ................
    19b4:	0102 0000 0000 0000 0100 0202 0202 0202     ................
    19c4:	0202 fe02 ff00 00ff 0000 0000 0000 0000     ................
    19d4:	0000 ffff ff00 0000 0000 0000 fc00 fa02     ................
    19e4:	fafa fafa 02fa 00fc 0000 0000 0000 0201     ................
    19f4:	0202 0102 0000 0000 0000 0100 0102 0000     ................
    1a04:	0000 0000 0100 0102 0000 0000 0000 ff00     ................
    1a14:	ff00 0000 0000 0000 0000 ff00 ff00 0000     ................
    1a24:	0000 0000 0100 0102 0000 0000 0000 fc00     ................
    1a34:	fc02 0000 0000 0000 fc00 fc02 0000 0000     ................
    1a44:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    1a54:	0000 ffff ff00 0000 0000 0000 0700 0b08     ................
    1a64:	0b0b 0b0b 080b 0007 0000 0000 0000 0a04     ................
    1a74:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
    1a84:	0a0a 0a0a 0a0a 040a 0000 0000 0000 0700     ................
    1a94:	0b08 0a0a 0a0a 0a0a 0a0a 0b0a 0708 0000     ................
    1aa4:	0000 0000 fc00 fa02 0a0a 0a0a 0a0a 0b0a     ................
    1ab4:	0708 0000 0000 0000 0700 0708 0000 0000     ................
    1ac4:	0000 ff00 ff00 00ff 0000 0000 0000 0000     ................
    1ad4:	0000 3f1f 6770 6868 6868 6868 6868 6868     ...?pghhhhhhhhhh
    1ae4:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    1af4:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    1b04:	6868 6868 e8e8 f008 0000 0000 0000 f000     hhhh............
    1b14:	e808 68e8 6868 6868 6868 6868 6868 6868     ...hhhhhhhhhhhhh
    1b24:	6868 6868 6f68 6f60 6868 6868 6868 6868     hhhhho`ohhhhhhhh
    1b34:	6868 6868 6868 6868 6868 6868 6868 6868     hhhhhhhhhhhhhhhh
    1b44:	6868 6768 3f70 001f                         hhhgp?..

00001b4c <Music>:
    1b4c:	ff7d ff7d ff6e ff6e ff5f ff5f ff4b ff4b     }.}.n.n._._.K.K.
    1b5c:	ff4b ff74 ff74 ff74 ff74 ff64 ff64 ff64     K.t.t.t.t.d.d.d.
    1b6c:	ff64 ff7d ff7d ff7d ff7d ff73 ff73 ff7d     d.}.}.}.}.s.s.}.
    1b7c:	ff7d ff8c ff8c ff78 ff78 ff64 ff64 ff64     }.....x.x.d.d.d.
    1b8c:	ff7d ff7d ff7d ff7d ff73 ff73 ff7d ff7d     }.}.}.}.s.s.}.}.
    1b9c:	ff8c ff8c ff73 ff73 ff7d ff7d ff8c ff8c     ....s.s.}.}.....
    1bac:	ff9b ff9b ff9b ffa5 ffa5 ffa5 ffaa ffaa     ................
    1bbc:	ffaa ffaa ffaa ffa5 ffa5 ffa5 ffa5 ffa5     ................
    1bcc:	ffa5 ffaa ffaa ffaa ffaa ffaa               ............
