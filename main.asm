 
INCLUDE Irvine32.inc
.DATA
menu byte "======SELECT A NUMBER FROM THIS MENU======",0
menuResult byte "Result is : ",0
exp byte ?
mantisa dword ?
leftmantisa dword ?
rightmantisa dword 0
numberfloat real4 ?





;===========================item1======================================
menu1 byte "1) Calculate f(x) for equation until third degree.",0
menu1EnterEquation byte "Enter Equation YALA F(X)=  ",0
menu1Equation byte 50 dup(0),0
menu1EnterEquationX byte "Enter X YALA : ",0
menu1EquationLen dword ?
menu1X dword ?
menu1Xp3 dword 0
menu1Xp2 dword 0
menu1Xp1 dword 0
menu1Xp0 dword 0
menu1Result dword ?
num1 real4 0.555
;===========================End item1======================================





;===========================item2======================================
menu2 byte "2) Calculate Combinations C (n,r).",0
menu2EnterN byte "Enter n YALA : ",0
menu2N dword ?
menu2EnterR byte "Enter r YALA : ",0
menu2R dword ?
menu2NR dword ?
menu2Result dword ?
;===========================End item2======================================





;===========================item3======================================
menu3 byte "3) Calculate percentage of x/y (%).",0
menu3EnterX byte "Enter x YALA : ",0
menu3X dword ?
menu3EnterY byte "Enter y YALA : ",0
menu3Y dword ?
menu3Result real4 ?
;===========================End item3======================================





;===========================item4======================================
menu4 byte "4) Calculate log base 10 [log10 (X)].",0
menu4input byte "Enter The Number YALA : ",0
num dword ?
menu4a dword 1
menu4b dword ?
Result real8 ?
rresult dword ?

menu4B1 real8 0.0
menu4B2 real8 0.3
menu4B3 real8 0.477
menu4B4 real8 0.6
menu4B5 real8 0.699
menu4B6 real8 0.778
menu4B7 real8 0.845
menu4B8 real8 0.9
menu4B9 real8 0.954
menu4B10 real8 1.0
;===========================End item4======================================







;===========================item5======================================
menu5 byte "5) Get the roots of a quadratic equation.",0
menu5EnterEquation byte "Enter Equation YALA : ",0
menu5Equation byte 50 dup(0),0
menu5EquationLen dword ?
a dword ?
b dword ?
cc dword ?
menu5Result1 byte "Solution-1: X1 = ",0
sol1 dword ?
menu5Result2 byte "Solution-2: X2 = ",0
sol2 dword ?
sq dword -4
sqrMsg byte "SQRT(",0
;===========================End item5=====================================










;===========================item6======================================
menu6 byte "6) Solving system of linear equations (with 2 unknowns).",0
menu6EnterEquation byte "Enter Equation YALA : ",0
menu6Equation byte 50 dup(0),0
menu6EquationLen dword ?
a1 dword ?
a2 dword ?
b1 dword ?
b2 dword ?
c1 dword ?
c2 dword ?
offsetY dword ?
offsetC dword ?
offsetD dword ?
lengthofC dword ?
arr dword 0,0,0,0,0,0    ;el arr de hta5d mn el user el numbers
arr2 dword 0,0,0,0,0,0   ;el arr2 de byt5zn feha el values el gded b3d el exachange fe el operations
arrRes dword 0,0		 ;store values of x and y
arrhelp dword ?          ; hna kan by help me f drb el matrix
arrhelp2 dword ?		 ; hna kan by help me f drb el matrix
arrFloatRes real4 0.0	 ;kont 3amlo a7ot feh x and y if were floating
mul1 dword ?			; mutiplication of kotr ra2esy	
mul2 dword ?			; mutiplication of kotr 'm4' ra2esy
sub1 dword ?			; subtraction of el kotren
div1 dword ?			;el 2esma
					
remfloat real4 0.0
floatdiv dword 1		; b2sm beh 
minus dword -1			; bdrb beh

valueOfX byte "x = ",0
valueOfY byte "y = ",0
;===========================End item6======================================







;===========================item7======================================
menu7 byte "7) Calculate Trigonometric Functions.",0
menu7EnterDeg byte "Enter Degree YALA : ",0
menu7ResultSin byte "1- sin(",0
menu7ResultCos byte "2- cos(",0
menu7ResultTan byte "3- tan(",0
menu7ResultCsc byte "4- csc(",0
menu7ResultSec byte "5- sec(",0
menu7ResultCot byte "6- cot(",0
deg dword 10
x real8 3.14159
sum real8 0.0
sum2 real8 0.0
t real8 3.14159
t1 real8 1.0
t2 real8 ?
t3 real8 ?
t4 real8 ?
PI real8 3.14159
above real8 ?
below real8 ?
n dword ?
r dword 1
sin real8 0.0
cos real8 0.0
tan real8 0.0
sec real8 0.0
csc real8 0.0
cot real8 0.0
one real8 1.0
;===========================End item7======================================








;===========================item8======================================
menu8 byte "8) Calculate Inverse Trigonometric Functions.",0
menu8EnterDeg byte "Enter Degree YALA : ",0
menu8ResultSin byte "1- sin^-1(",0
menu8ResultCos byte "2- cos^-1(",0
menu8ResultCsc byte "3- csc^-1(",0
menu8ResultSec byte "4- sec^-1(",0
menu8ResultTan byte "5- tan^-1(",0
menu8ResultCot byte "6- cot^-1(",0
sinIn real8 ?
cosIn real8 ?
tanIn real8 ?
secIn real8 ?
cscIn real8 ?
cotIn real8 ?
;===========================End item8======================================






;===========================item9======================================
menu9 byte "9) Calculate Combinations P (n,r).",0
menu9EnterN byte "Enter n YALA : ",0
menu9N dword ?
menu9EnterR byte "Enter r YALA : ",0
menu9R dword ?
menu9NR dword ?
menu9Result dword ?

str1 byte "Enter n YALA : ",0
str2 byte "Enter r YALA : ",0

result1 dword ?
result2 dword ?
finalres dword ?
;===========================End item9======================================






;===========================item10======================================
menu10 byte "10) Calculate X MOD Y.",0
xmod dword ?
 ymod dword ?
  modres dword 0
 divident byte "Enter el divident : ",0
divisor byte "Enter el divisor : ",0
remender byte " el result  ahooooooooo : ",0
error byte "{{{{{ INVALID INPUTS! -- SELECT AGAIN YALA .}}}}}",0
;===========================End item10======================================









;===========================item11======================================
menu11 byte "11) Calculate equation which has several brackets.",0
menu11EnterEquation byte "Enter Equation YALA : ",0
menu11EnterEquationX byte "Enter X YALA : ",0
menu11EquationLen dword ?
menu11Equation byte 50 dup(0),0
menu11X dword ?
menu11Y dword ?
menu11counter dword ?
menu11Result dword ?
;===========================End item11======================================







;===========================itemEXP======================================
menuEXP byte "12) Calculate e^x.",0
const real8 2.718281828
val_res real8 ?
xEXP dword ?
yEXP real8 1.0
message byte "Enter Exp. Power : ",0
;===========================End item11======================================










;===========================item12======================================
menu12 byte "13) Exit.",0
menu121 byte "************************************************************************************************",0
menu122 byte "        *********************************************************************************       ",0
menu123 byte "               ******************************************************************               ",0
menu124 byte "                      **********************BYE BYE***********************                      ",0
menu125 byte "                                *********************************                               ",0
menu126 byte "                                      ********************                                      ",0
menu127 byte "                                            *********                                           ",0
menu128 byte "                                               ***                                              ",0

;===========================End item12======================================

menuErrorMsg byte "{{{{{ INVALID INPUTS! -- SELECT AGAIN YALA .}}}}}",0
menuSelectMsg byte "Select YALA : ",0
selectedItem dword ?








.code
;---------------------------------------------------------------------------
;printing number as a float 
;------------------------------------------------------------------
;------------------------------------------------------------------
; returnes : myfloat 
;---------------------------------------------------------------------------
writemyfloat PROC
;calculate exp
		mov eax,numberfloat
		shr eax,23
		sub al,127
		mov exp,al
		mov al,exp

		;exp dword ?
		;mantisa dword ?
		;leftmantisa dword ?
		;calculate manntissa
		mov eax,numberfloat
		shl eax,8
		or eax,80000000h
		mov mantisa,eax
		mov cl,32
		inc exp
		sub cl,exp
		shr eax,cl
		mov leftmantisa,eax
		mov ebx,2
		mov eax,mantisa
		mov ecx,31
		sub cl,exp
		lb:
		bt mantisa,ecx
		jnc l2b
		mov edx,0
		mov eax,1000
		div ebx
		add rightmantisa,eax
		l2b:
		shl ebx,1
		dec cl
		cmp cl,7
		jne lb

		mov eax,leftmantisa
		call writeint
		mov al,'.'
		call writechar
		mov eax,rightmantisa
		call writedec
RET
writemyfloat ENDP




;------------------------------------------------------------------
;calculates : modulus of two number 
;------------------------------------------------------------------
;------------------------------------------------------------------
; returnes : modulus of two number in modres 
;------------------------------------------------------------------
modulus proc
          mov eax, xmod                      ;eax=xmod
		  mov edx,0                          ;edx=0 
	      div  ymod                          ;  xmod/ ymod
		  mov modres,edx                     ; modres== edx
	RET 
modulus ENDP




;------------------------------------------------------------------
;calculates : sin Inverse Sin-1() 
;------------------------------------------------------------------
;------------------------------------------------------------------
; returnes : Sin-1() in stack
;------------------------------------------------------------------
;====================calculateSineInverse============================
calculateSineInverse PROC
				mov ecx,3
				call power
				fstp above

				mov n,6
				fld above
				fild n
				fdiv
				fstp t2
				


				mov ecx,5
				call power
				mov n,3
				fild n
				fmul
				fstp above
				
				
				mov n,40
				fld above
				fild n
				fdiv
				fstp t3

				mov ecx,7
				call power
				mov n,15
				fild n
				fmul
				fstp above
				
				
				
				mov n,336
				fld above
				fild n
				fdiv
				fstp t4

				fld t1
				fld t2
				fadd
				fld t3
				fadd
				fld t4
				fadd
				fstp sum
				;====-=-=-=

				
		;convert degree into rad
		mov n,180				;deg=180
		fild n				;st(0)=deg
		fld sum	 				;st(0)=sum
		fmul					;st(0)=sum*deg

	fstp sum
	fld sum
		fld PI
		fdiv					;st(0)=180*deg / 3.14159
		frndint					;round one
		fistp deg
RET
calculateSineInverse ENDP
;===================END calculateSineInverse============================







;====================calculateCosInverse============================
calculateCosInverse PROC

		call calculateSineInverse
		mov eax,90
		sub eax,deg
		mov deg,eax
RET
calculateCosInverse ENDP
;===================END calculateCosInverse============================





;=======Calculate Power x ===============
power PROC
	fild r
	pow:
		fld x
		fmul
	loop pow
RET
power endp
;=======END Calculate Power x ===============






;================================FindABCEQ ===============
FindABCEQ PROC
		mov ecx,menu6EquationLen
		mov esi,OFFSET menu6Equation
		mov ebx,OFFSET menu6Equation
		mov al,[ebx]
		cmp al,'-'
		jnz calx
		inc esi
		inc ebx
		calx:
			mov al,[esi]
			cmp al,'x'
			jnz conCalx
			mov offsetY,esi
			mov a,1
			mov al,[esi-1]
			cmp al,'*'
			jnz checkNEG
			
			mov a,0
			mov r,ecx
			mov n,1
			lll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add a,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG
				mov eax,10
				mul a
				mov a,eax
			loop lll
			mov ecx,r

			jmp checkNEG			
			conCalx:
				inc esi
				loop calx

			checkNEG:
			mov ebx,OFFSET menu6Equation
			mov al,[ebx]
			cmp al,'-'
			jnz calYY
			neg a




			calYY:
			mov ecx,menu6EquationLen
			mov esi,offsetY
			mov ebx,offsetY
			inc esi
			inc ebx
			inc esi
			inc ebx


			caly:
			mov al,0
			mov al,[esi]
			cmp al,'y'
			jnz conCaly
			mov offsetC,esi
			mov b,1
			mov al,[esi-1]
			cmp al,'*'
			jnz checkNEG2
			
			mov b,0
			mov r,ecx
			mov n,1
			llll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add b,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG2
				mov eax,10
				mul b
				mov b,eax
			loop llll
			mov ecx,r

			jmp checkNEG2			
			conCaly:
				inc esi
				loop caly

			checkNEG2:
			mov ebx,offsetY
			inc ebx
			mov al,[ebx]
			cmp al,'-'
			jnz calCC
			neg b
			

			calCC:
			mov lengthofC,1
			mov ecx,menu6EquationLen
			mov esi,OFFSET menu6Equation
			len:
				mov al,[esi]
				cmp al,'='
				jz s
				inc lengthofC
				inc esi
			loop len
			s:
			mov offsetC,esi
			mov ecx,menu6EquationLen
			sub ecx,lengthofC
			mov lengthofC,ecx
			mov ecx,menu6EquationLen
			mov esi,offsetC
			mov ebx,offsetC
			inc esi
			inc ebx
			
			mov al,[esi]
			cmp al,'-'
			jnz cll
			inc ebx
			inc esi
			dec lengthofC
			
			cll:
			mov al,0
			mov al,[esi]
			mov cc,0
			mov n,1
			mov ecx,lengthofC
			lllll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add cc,eax

				mov eax,ecx
				dec eax
				cmp eax,0
				jz checkNEG3
				inc ebx
				mov eax,10
				mul cc
				mov cc,eax
			loop lllll			
		

			checkNEG3:
			mov ebx,offsetC
			inc ebx
			mov al,[ebx]
			cmp al,'-'
			jnz E
			neg cc	
E:RET
FindABCEQ ENDP
;=======================END FindABCEQ=====================







;=======Calculate Factorial from N = ECX ,  to Result = EAX===============
Fact proc
	cmp ecx,1			;compare ecx,1
		jz conn			;ecx==1 GOTO conn
	cmp ecx,0			;compare ecx,1
		jz conn			;ecx==1 GOTO conn
	L:
		dec ecx			;ecx--
		mul ecx			;eax=eax*ecx
		cmp ecx,1		;compare ecx,1
		jnz L 			;ecx!=1 GOTO L AGAIN
		jmp e
	conn:
		mov eax,1		;eax=1
		e: ret
Fact endp
;==========================End Fatorial PROC==============================







;=======Calculate F(X) and put Values of each term in their vars.===============
CalculateFOFX proc
		;Caculate X^3 Term
		
		mov menu1Xp3,0
		mov menu1Xp2,0
		mov menu1Xp1,0
		mov menu1Xp0,0
		mov lengthofC,0
		mov ecx, menu1EquationLen			;ecx=length of equation
		
		mov esi, OFFSET menu1Equation		;esi=start of equation
		mov ebx, OFFSET menu1Equation		;ebx=start of equation
		mov offsetY,ebx
			mov offsetC,ebx
			mov offsetD,ebx

		mov al,[ebx]
		cmp al,'-'
		jnz calX3
		inc esi
		inc ebx
		calX3:
			
			mov al,[esi]					;al=[esi]
			cmp al,'x'						;compare between index in eq. and 'x'
			jnz conCalX3					;if !=0 GOTO counter
			mov al,[esi+1]					;al=[esi+2]
			cmp al,'^'						;compare between index in eq. and '3'
			jnz conCalX3					;if !=0 GOTO counter
			mov al,[esi+2]					;al=[esi+2]
			cmp al,'3'						;compare between index in eq. and '3'
			jnz conCalX3					;if !=0 GOTO counter
			
			add lengthofC,3
			
			mov a,1
			mov al,[esi-1]					;al=[esi-1]
			cmp al,'*'						;compare between index in eq. and '*'
			jnz checkNEGA					;if !=0 GOTO check - or +
			inc lengthofC
			mov a,0
			ll:
				inc lengthofC
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add a,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEGA
				mov eax,10
				mul a
				mov a,eax
			loop ll
		
			conCalX3:
				inc esi							;esi++
				loop calX3						;continue loop
				jmp calX2loop

			checkNEGA:
			mov edx,esi
			add edx,3
			mov offsetY,edx
			mov offsetC,edx
			mov offsetD,edx
			mov eax,menu1X					;eax=x
			mul menu1X						;eax=x*x
			mul menu1X						;eax=x*x*x
			mul a

			mov menu1Xp3,eax
			mov ebx,OFFSET menu1Equation
			mov al,[ebx]
			cmp al,'-'
			jnz calX2loop
			neg menu1Xp3
			inc lengthofC
			
			

		;Calculate X^2 Term
		calX2loop:
		mov ecx,menu1EquationLen
			mov esi,offsetY
			mov ebx,offsetY
			mov offsetY,ebx
			mov offsetC,ebx
			mov offsetD,ebx
			mov al,[ebx]
			cmp al,'+'
			jz hjk
			cmp al,'-'
			jz hjk
			jmp calX2
			hjk:
			inc esi
			inc ebx
			
		calX2:
			mov al,[esi]					;al=[esi]
			cmp al,'x'						;compare between index in eq. and 'x'		
			jnz conCalX2					;if !=0 GOTO counter
			mov al,[esi+1]					;al=[esi+2]
			cmp al,'^'						;compare between index in eq. and '2'		
			jnz conCalX2					;if !=0 GOTO counter
			mov al,[esi+2]					;al=[esi+2]
			cmp al,'2'						;compare between index in eq. and '2'		
			jnz conCalX2					;if !=0 GOTO counter
			
			mov edx ,esi
			add edx,3
			mov offsetC,edx
			mov offsetD,edx
			mov b,1
			
			mov al,[esi-1]					;al=[esi-1]
			
			cmp al,'*'						;compare between index in eq. and '*'		
			jnz checkNEG2						;if !=0 check - or +
			inc lengthofC
			mov b,0
			llll:
				inc lengthofC
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add b,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG2
				mov eax,10
				mul b
				mov b,eax
			loop llll			
			conCalX2:
				inc esi
				loop calX2
				jmp calX1loop
			checkNEG2:
			mov eax,menu1X					;eax=x
			mul menu1X						;eax=x*x
			mov menu1Xp2,eax				;menu1Xp2=x*x
			add lengthofC,3
			mov eax,b
			mul menu1Xp2
			mov menu1Xp2,eax
			mov ebx,offsetY
			mov al,[ebx]
			cmp al,'+'
			jz bvn
			cmp al,'-'
			jnz calX1loop
			neg menu1Xp2
			
			bvn:
			add lengthofC,1
			
			
			

			;calculate x term	=================================================
		calX1loop:
		mov ecx,menu1EquationLen
			mov esi,offsetC
			mov ebx,offsetC
			mov offsetY,ebx
			mov offsetC,ebx
			mov offsetD,ebx

			
			mov al,[esi]
			cmp al,'-'
			jz hj
			cmp al,'+'
			jz hj
			jmp calX1
			hj:
			inc esi
			inc ebx
			
		calX1:
			mov al,0
			mov al,[esi]
			cmp al,'x'
			jnz conCalX1
			mov al,[esi+1]
			cmp al,'^'
			jz conCalX1
			mov offsetD,esi
			inc offsetD
			mov eax,menu1X
			mov menu1Xp1,eax
			mov b,1
			mov al,[esi-1]
			cmp al,'*'
			jnz checkNEG3						;if !=0 check - or +
			add lengthofC,1
			mov b,0
			lll:
				inc lengthofC
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add b,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG3
				mov eax,10
				mul b
				mov b,eax
			loop lll			
			conCalX1:
				inc esi
				loop calX1
				jmp calX0loop
			checkNEG3:
			add lengthofC,1
			mov eax,b
			mul menu1Xp1
			mov menu1Xp1,eax
			mov ebx,offsetC
			mov al,[ebx]
			cmp al,'+'
			jz eqq
			cmp al,'-'
			jnz calX0loop
			neg menu1Xp1
			eqq:
			add lengthofC,1
			

				;=============================
		calX0loop:
		mov ecx, menu1EquationLen 
		sub ecx, lengthofC
		mov lengthofC,ecx
		cmp ecx ,0
		jbe ENDCalculateFOFXPROC
		mov esi, offsetD
		mov ebx, offsetD
		
		inc ebx
		cmpp:
		mov al,[ebx]
		cmp al,'+'
		jz hh
		cmp al,'-'
		jz hh
		jmp h1	

			hh:
			inc ebx
			h1:
				mov b,0
				mov menu1Xp0,1
				mov ecx, lengthofC
				
				cmp ecx,0
				jbe ENDCalculateFOFXPROC
				dec ecx
			l:
				
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add b,eax
				inc ebx
				
				cmp ecx,1
				jz checkNEG4
				mov eax,10
				mul b
				mov b,eax
			loop l			
			
				
				
			checkNEG4:
			mov eax,b
			mul menu1Xp0
			mov menu1Xp0,eax
			mov ebx,offsetD
			
			mov al,[ebx]
			cmp al,'-'
			jnz ENDCalculateFOFXPROC
			neg menu1Xp0
			
			
		ENDCalculateFOFXPROC: RET
CalculateFOFX endp
;==========================End Calculate F(X) PROC==============================







;=======calculateABCterms and put Values of each term in their vars.===============
calculateABCterms proc
		;Calculate X^2 Term
		calx2loop:
		mov ecx, menu5EquationLen			;ecx=length of equation
		
		mov esi, OFFSET menu5Equation		;esi=start of equation
		mov ebx, OFFSET menu5Equation		;ebx=start of equation

		mov al,[ebx]
		cmp al,'-'
		jnz calx2
		inc esi
		inc ebx
		calx2:
			mov al,0						;al=0
			mov al,[esi]					;al=[esi]
			cmp al,'x'						;compare between index in eq. and 'x'		
			jnz conCalx2					;if !=0 GOTO counter
			mov al,[esi+1]					;al=[esi+1]
			cmp al,'^'						;compare between index in eq. and '^'		
			jnz conCalx2					;if !=0 GOTO counter
			mov al,[esi+2]					;al=[esi+2]
			cmp al,'2'						;compare between index in eq. and '2'		
			jnz conCalx2					;if !=0 GOTO counter
			mov edx,esi
			add edx,2
			mov offsetY,edx
			mov offsetC,edx
			mov a,1							;a=1
			mov al,[esi-1]					;al=[esi-1]
			cmp al,'*'						;compare between index in eq. and '*'		
			jnz checkNEG						;if !=0 check - or +
			
			mov a,0
			lll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add a,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG
				mov eax,10
				mul a
				mov a,eax
			loop lll

			jmp checkNEG			
			conCalx2:
				inc esi
				loop calx2

			checkNEG:
			mov ebx,OFFSET menu5Equation
			mov al,[ebx]
			cmp al,'-'
			jnz calx1loop
			neg a
		

			;	=================================================
		calx1loop:
		mov ecx,menu5EquationLen
			mov esi,offsetY
			mov ebx,offsetY
			inc esi
			inc ebx
			inc esi
			inc ebx
		calx1:
			mov al,0
			mov al,[esi]
			cmp al,'x'
			jnz conCalx1
			mov al,[esi+1]
			cmp al,'^'
			jz conCalx1
			mov b,1
			mov al,[esi-1]
			cmp al,'*'
			jnz checkNEG2
			mov offsetC,esi

			mov b,0
			mov r,ecx
			mov n,1
			llll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add b,eax
				inc ebx

				mov al,[ebx]
				cmp al,'*'
				jz checkNEG2
				mov eax,10
				mul b
				mov b,eax
			loop llll
			mov ecx,r

			jmp checkNEG2			
			conCalx1:
				inc esi
				loop calx1

			checkNEG2:
			mov ebx,offsetY
			inc ebx
			mov al,[ebx]
			cmp al,'-'
			jnz calx0loop
			neg b
			

				;=============================


		calx0loop:
			mov ecx,menu6EquationLen
			mov esi,offsetC
			mov ebx,offsetC
			inc esi
			inc ebx
			
			mov al,[esi]
			cmp al,'='
			mov cc,0
			jz ENDCalculateABCterms
			inc ebx
			inc esi
			
		calx0:
			

			mov cc,0
			mov n,1
			lllll:
				mov al,[ebx]
				movzx eax,al
				AND eax,11001111b
				add cc,eax

				mov al,[ebx+1]
				cmp al,'='
				jz checkNEG3
				inc ebx
				mov eax,10
				mul cc
				mov cc,eax
			loop lllll			
		

			checkNEG3:
			mov ebx,offsetC
			inc ebx
			mov al,[ebx]
			cmp al,'-'
			jnz ENDCalculateABCterms
			neg cc	
		
		ENDCalculateABCterms: RET
calculateABCterms endp
;==========================End calculateABCterms PROC==============================





;==========================Find roots PROC==============================
;==========================SQRT PROC==============================
sqrtRoot PROC
	fild sq				;st(0)=b*b-4*a*cc
	fsqrt				;st(0)=sqrt(b*b-4*a*cc)
	fistp sq			;sq=st(0)=sqrt(b*b-4*a*cc)
	mov eax,sq			;eax=sq=sqrt(b*b-4*a*cc)
RET
sqrtRoot endp
;==========================END SQRT PROC==============================




;==========================find Roots PROC==============================
findRoots PROC
	;calculate under the square root
	mov sq,-4
	mov eax,sq				;eax=-4
	mul a					;eax=-4*a
	mul cc					;eax=-4*a*cc
	mov sq,eax				;sq=eax=-4*a*cc
	mov eax,b				;eax=b
	mul b					;eax=b*b
	add sq,eax				;sq=b*b-4*a*cc

	;make a decision
	cmp sq,0				;compare sq ,0
	jz zeroSqrt				;if equal GOTO zeroSqrt
	cmp sq,1				;compare sq ,1
	jg greaterThanOneSqrt	;if sq > 1 GOTO greaterThanOneSqrt

	;else sq < 1
	;calculate non real number
	;calculate sqrt(sq)
	mov eax,-1				;eax=-1
	mul sq					;eax=-1*sq
	mov sq,eax				;sq=eax

	mov ebx,1				;boolean to check which root will print
	
	jmp e					;end of PROC 

	;calculate roots if sq > 1
	greaterThanOneSqrt:
		mov ebx,0
		call sqrtRoot		;sq=SQRT(sq)

		mov ecx,sq			;ecx=sq
		mov sol1,ecx		;solution1=sq
		mov sol2,ecx		;solution2=sq

		;calculate -1*b in esi
		mov ecx,-1			;ecx=-1
		mov eax,b			;eax=b
		mul ecx				;eax=-1*b
		mov esi,eax			;esi=-1*b

		;calculate -1*b + sqrt(b*b-4*a*c)
		add eax,sol1		;eax=-1*b + solution1
		mov sol1,eax		;solution1=-1*b + solution1

		;calculate -1*b - sqrt(b*b-4*a*c)
		sub esi,sol2		;esi=-1*b - solution2
		mov sol2,esi		;solution2=-1*b + solution2

		mov eax,2			;eax=2
		mul a				;eax=2*a
		mov ecx,eax			;ecx=2*a

		;calculate (-1*b + sqrt(b*b-4*a*c))/2*a into solution1
		fild sol1			;st(0)=-1*b + sqrt(b*b-4*a*c
		mov a,ecx			;a=2*a
		fild a				;st(0)=2*a
		fdiv				;st(0)=(-1*b + sqrt(b*b-4*a*c))/2*a
		fistp sol1			;solution1=st(0)
		
		;calculate (-1*b - sqrt(b*b-4*a*c))/2*a into solution2
		fild sol2			;st(0)=-1*b - sqrt(b*b-4*a*c
		mov a,ecx			;a=2*a
		fild a				;st(0)=2*a
		fdiv 				;st(0)=(-1*b + sqrt(b*b-4*a*c))/2*a
		fistp sol2			;solution2=st(0)

		jmp e			;end of PROC ,print solution1 and solution2

	;calculate roots if sq=0 
	;solution1 = solution2 = (-1*b)/(2*a)
	zeroSqrt:
		mov ebx,0

		;calculate -1*b into esi
		mov ecx,-1			;ecx=-1
		mov eax,b			;eax=b
		mul ecx				;eax=-1*b
		mov esi,eax			;esi=-1*b

		;calculate 2*a into ecx
		mov ecx,2			;ecx=2
		mov eax,a			;eax=a
		mul ecx				;eax=2*a
		mov ecx,eax			;ecx=2*a

		mov sq,esi			;sq=-1*b
		fild sq				;st(0)=-1*b

		mov a,ecx			;a=2*a
		fild a				;st(0)=2*a

		fdiv				;st(0)=(-1*b)/(2*a)
		fistp sol1			;solution1=(-1*b)/(2*a)
		mov eax,sol1		;eax=(-1*b)/(2*a)
		mov sol2,eax		;solution2=(-1*b)/(2*a)

		jmp e			;end of PROC ,print solution1 and solution2 
	
e:RET
findRoots endp
;==========================END find Roots PROC==============================









;==========================Print Non Real Roots PROC==============================
printNonReal PROC
	;print solutions
	;print (real +- real i)/real
	mov edx,offset menu5Result1
	call writestring
	mov eax,-1				;eax=-1
	mul b					;eax=-1*b
	mov b,eax				;b=-*b
	mov eax,2				;eax=2
	mul a					;eax=2*a
	mov a,eax				;a=2*a
	mov al,'('				;al='('
	call writechar			;print (
	mov eax,b				;eax=b
	call writeint			;print b
	mov al,' '				;al=' '
	call writechar			;print ' '
	mov al,'+'				;al='+'
	call writechar			;print '+'
	mov al,' '				;al=' '
	call writechar			;print ' '
	mov edx,offset sqrMsg	;esx=offset sqrMsg
	call writestring		;print SQRT(
	mov eax,sq				;eax=sq
	call writedec			;print sq
	mov al,')'				;al=')'
	call writechar			;print ')'
	mov al,'i'				;al='i'
	call writechar			;print 'i'
	mov al,')'				;al=')'
	call writechar			;print ')'
	mov al,'/'				;al='/'
	call writechar			;print '/'
	mov eax,a				;eax=a
	call writedec			;print a
	call crlf				;printb ' '

	mov edx,offset menu5Result2
	call writestring
	mov al,'('				;al='('
	call writechar			;print (
	mov eax,b				;eax=b
	call writeint			;print b
	mov al,' '				;al=' '
	call writechar			;print ' '
	mov al,'-'				;al='-'
	call writechar			;print '-'
	mov al,' '				;al=' '
	call writechar			;print ' '
	mov edx,offset sqrMsg	;esx=offset sqrMsg
	call writestring		;print SQRT(
	mov eax,sq				;eax=sq
	call writedec			;print sq
	mov al,')'				;al=')'
	call writechar			;print ')'
	mov al,'i'				;al='i'
	call writechar			;print 'i'
	mov al,')'				;al=')'
	call writechar			;print ')'
	mov al,'/'				;al='/'
	call writechar			;print '/'
	mov eax,a				;eax=a
	call writedec			;print a
	call crlf				;printb ' '
	call crlf				;printb ' '
RET
printNonReal endp
;==========================END Print Non Real Roots PROC==============================
;==========================END find Roots PROC==============================



;==========================Power integer PROC==============================
;========================Power ECX as a number=============================
;========================RETURN the Power in EAX===========================
powerInt PROC
	mov eax,0
	mov al,1
	pow:
		mul bl
	loop pow
RET
powerInt endp
;==========================END Power integer PROC==============================





main PROC

;PRINT MENU TO USER
start:
	mov edx,offset menu
	call writestring
	call crlf
	call crlf


	mov edx,offset menu1
	call writestring
	call crlf

	mov edx,offset menu2
	call writestring
	call crlf

	mov edx,offset menu3
	call writestring
	call crlf

	mov edx,offset menu4
	call writestring
	call crlf

	mov edx,offset menu5
	call writestring
	call crlf

	mov edx,offset menu6
	call writestring
	call crlf

	mov edx,offset menu7
	call writestring
	call crlf

	mov edx,offset menu8
	call writestring
	call crlf

	mov edx,offset menu9
	call writestring
	call crlf

	mov edx,offset menu10
	call writestring
	call crlf

	mov edx,offset menu11
	call writestring
	call crlf

	
	mov edx,offset menuEXP
	call writestring
	call crlf

	mov edx,offset menu12
	call writestring
	call crlf
	call crlf
	
	mov edx,offset menuSelectMsg
	call writestring
	call readint
	mov selectedItem,eax
	



;USER SELECTED ITEM FROM MENU
	cmp selectedItem,1
	jz item1			;GOTO ITEM 1
	cmp selectedItem,2
	jz item2			;GOTO ITEM 2
	cmp selectedItem,3
	jz item3			;GOTO ITEM 3
	cmp selectedItem,4
	jz item4			;GOTO ITEM 4
	cmp selectedItem,5
	jz item5			;GOTO ITEM 5
	cmp selectedItem,6
	jz item6			;GOTO ITEM 6
	cmp selectedItem,7
	jz item7			;GOTO ITEM 7
	cmp selectedItem,8
	jz item8			;GOTO ITEM 8
	cmp selectedItem,9
	jz item9			;GOTO ITEM 9
	cmp selectedItem,10
	jz item10			;GOTO ITEM 10
	cmp selectedItem,11
	jz item11			;GOTO ITEM 11
	cmp selectedItem,12
	jz itemEXP			;GOTO ITEM 11
	cmp selectedItem,13
	jz item12			;GOTO ITEM 12




;PRINT ERROR MSG IF SELECT ITEM NOT FOUND IN MENU
	mov edx,offset menuErrorMsg
	call crlf
	call writestring
	call crlf
	call crlf
	jmp start







	item1:
		;Calculate f(x) for equation until third degree
		;================================================ESLAM ASHRAF
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		call crlf
		mov edx,offset menu1EnterEquation		;edx=offset menu1EnterEquation
		call writestring						;print (Enter Equation YALA : )
		mov edx,offset menu1Equation			;edx=menu1Equation
		mov ecx,lengthof menu1Equation			;ecx=51
		call readstring							;menu1Equation= FromUser
		mov menu1EquationLen,eax				;menu1EquationLen= length of string which user entered
		mov edx,offset menu1EnterEquationX		;edx=offset menu1EnterEquationX
		call writestring						;print (Enter X YALA : )
		call readint							;enter from user
		mov menu1X,eax							;menu1X=eax
		call crlf
		;============================write code here yabni===========================

		mov menu1Xp3,0
		mov menu1Xp2,0
		mov menu1Xp1,0
		mov menu1Xp0,0

		call CalculateFOFX
		
		mov eax,menu1Xp0
		add eax,menu1Xp1
		add eax,menu1Xp2
		add eax,menu1Xp3
		mov menu1Result,eax
		mov edx,offset menuResult				;edx=offset menuResult
		call writestring						;print(Result is : )
		call writeint							;print(menu2N/(menu2NR*menu2R))			
		call crlf								;print space
		call crlf								;print space
			


		;================================m7dsh y3di el 5at daaah=====================
		jmp start

item22:
	mov edx,offset menuErrorMsg
	call crlf
	call writestring
	call crlf
	item2:
		;Calculate Combinations C (n,r)
		;================================================Abdel-Hafeez
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf
		
		mov edx,offset menu2EnterN				;edx=offset menu2EnterN
		call writestring						;print (Enter n YALA : )
		call readint							;value n from user
		mov menu2N,eax							;menu2N=eax
		mov edx,offset menu2EnterR				;edx=offset menu2EnterR
		call writestring						;print (Enter r YALA : )
		call readint							;value r from user
		mov menu2R,eax							;menu2R=eax

		cmp menu2N,eax							;compare menu2N,menu2R
		jng item22								;n < r GOTO item2 again
		cmp menu2N,0							;compare menu2N,0
		jng item22								;n < 0 GOTO item2 again
		cmp menu2R,0							;compare menu2R,0
		jng item22								;n < 0 GOTO item2 again
		
		mov ebx,menu2N							;ebx=menu2N
		mov menu2NR,ebx							;menu2NR=menu2N
		sub menu2NR,eax							;menu2NR=menu2NR-menu2R

		call crlf
		
		mov ecx,menu2N							;ecx=menu2N
		mov eax,menu2N							;eax=menu2N
		call Fact								;Calculate factorial n
		mov menu2N,eax							;menu2N=fact(menu2N)

		mov ecx,menu2R							;ecx=menu2R
		mov eax,menu2R							;eax=menu2R
		call Fact								;Calculate factorial r
		mov menu2R,eax							;menu2R=fact(menu2R)

		mov ecx,menu2NR							;ecx=menu2NR
		mov eax,menu2NR							;eax=menu2NR
		call Fact								;Calculate factorial n-r
		mov menu2NR,eax							;menu2NR=fact(menu2NR)

		mov eax ,menu2NR						;eax=menu2NR
		mul menu2R								;eax=menu2NR*menu2R
		mov ebx,eax								;ebx=menu2NR*menu2R

		mov eax,menu2N							;eax=menu2N
		div ebx									;eax=menu2N/(menu2NR*menu2R)

		mov menu2Result,eax						;menu2Result=menu2N/(menu2NR*menu2R)

		mov edx,offset menuResult				;edx=offset menuResult
		call writestring						;print(Result is : )
		call writedec							;print(menu2N/(menu2NR*menu2R))
		call crlf								;print space
		call crlf								;print space
		;================================m7dsh y3di el 5at daaah=====================
		jmp start









item33:
	mov edx,offset menuErrorMsg
	call crlf
	call writestring
	call crlf
	item3:
		;Calculate percentage of x/y (%)
		;================================================Abdel-Hafeez
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf
		mov edx,offset menu3EnterX				;edx=offset menu3EnterX
		call writestring						;print (Enter x YALA : )
		call readint							;value x from user
		mov menu3X,eax							;menu3X=eax
		mov edx,offset menu3EnterY				;edx=offset menu3EnterY
		call writestring						;print (Enter y YALA : )
		call readint							;value y from user
		mov menu3Y,eax							;menu3Y=eax
		cmp eax,0
		je item33
		mov eax,menu3X
		cmp eax,0
		je item33
		call crlf
		
		mov eax,100								;eax=100
		mul menu3X								;eax=menu3X*100
		mov menu3X,eax							;menu3X=menu3X*100
		fild menu3X								;st(0)=menu3X
		fild menu3Y								;st(0)=menu3Y
		fdiv									;st(0)=menu3X/menu3Y
		fst menu3Result							;menu3Result=menu3X/menu3Y
		mov eax,menu3Result
		
		mov numberfloat,eax
		
		
		mov edx,offset menuResult				;edx=offset menuResult
		call writestring						;print(Result is : )
		call writemyfloat							;print(menu2N/(menu2NR*menu2R))
		mov al,'%'								;al='%'
		call writechar							;print(%)
		call crlf								;print space
		
		
		call crlf

									;print space
		;================================m7dsh y3di el 5at daaah=====================
		jmp start










startt:
	mov edx,offset menuErrorMsg
	call crlf
	call writestring
	call crlf
	item4:
		;Calculate log base 10 [log10 (X)]
		;================================================AHMAD ASHRAF
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf 

		mov menu4a,1
		mov menu4b,0

		mov edx , offset menu4input ;print
		call writestring			;print
		call readint				;get input
		mov num,eax					;num=eax
		
		;check the sign of number
		cmp eax,0
		jle startt

		;check the range of number
		mov eax,num
		lp:
		cmp eax,1
		je tr
		cmp eax,2
		je tr
		cmp eax,3
		je tr
		cmp eax,4
		je tr
		cmp eax,5
		je tr
		cmp eax,6
		je tr
		cmp eax,7
		je tr
		cmp eax,8
		je tr
		cmp eax,9
		je tr

		mov ebx, 10					;ebx=10
		mov edx , 0					;edx=0
		div ebx						;eax=num/ebx

		cmp edx , 0					;compare anumber
		jne startt
		je lp
		
		tr:
		mov eax,num					;eax=num
		mov ebx,0					;ebx=0

		;compute b
		l11:
		mov ebx,10
		div ebx
		mov esi,edx	
		cmp edx,0
		je l11
		mov menu4b , esi 
		mov eax , num
		
		mov edx , 0
		div menu4b
		mov num, eax

		;compute a
		mov eax , num
		l3:
			cmp eax , 10
			je resultt
			mov ebx , 10 
			div ebx
			inc menu4a
		jmp l3
       
		resultt:
		;=====================================
		
		cmp menu4b,1
		je R1
		cmp menu4b,2
		je R2
		cmp menu4b,3
		je R3
		cmp menu4b,4
		je R4
		cmp menu4b,5
		je R5
		cmp menu4b,6
		je R6
		cmp menu4b,7
		je R7
		cmp menu4b,8
		je R8
		cmp menu4b,9
		je R9
		jmp R10

		R1:
			fld menu4B1
			jmp finish
		;=====================================
		R2:
			fld menu4B2
			jmp finish
		;======================================
		R3:
			fld menu4B3
			jmp finish
		;=======================================
		R4:
			fld menu4B4
			jmp finish
		;=======================================
		R5:
			fld menu4B5
			jmp finish
		;=========================================
		R6:
			fld menu4B6
			jmp finish
		;======================================
		R7:
			fld menu4B7
			jmp finish
		;======================================
		R8:
			fld menu4B8
			jmp finish
		;=========================================
		R9:
			fld menu4B9
			jmp finish
		;=========================================
		R10:
			fld menu4B10

		finish:
			mov edx,offset menuResult				;edx=offset menuResult
			call writestring						;print(Result is : )
			fild menu4a
			fadd
			fstp numberfloat
			call writemyfloat
			call crlf
			call crlf
		
		

		;================================m7dsh y3di el 5at daaah=====================
		jmp start









	item5:
		;Get the roots of a quadratic equation
		;================================================Abdel-Hafeez
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf
		mov edx,offset menu5EnterEquation
		call writestring
		mov edx,offset menu5Equation
		mov ecx,lengthof menu5Equation
		call readstring
		mov menu5EquationLen,eax
		call crlf


		comment !
		call readint
		mov a,eax
			
		call readint
		mov b,eax

		call readint
		mov cc,eax
		
		call crlf
		!


		mov a,0
		mov b,0
		mov cc,0

		;calculate ABC Terms

		call calculateABCterms
		complete:
		call findRoots

		cmp ebx,1
		jnz print
			call printNonReal
			jmp start
		;print roots
		print:
			mov edx,offset menu5Result1
			call writestring
			mov eax,sol1		;eax=sol1
			call writeint		;print solution1
			call crlf			;print new line 
			mov edx,offset menu5Result2
			call writestring
			mov eax,sol2		;eax=sol2
			call writeint		;print solution2
			call crlf			;print new line 
			call crlf			;print new line 

		;================================m7dsh y3di el 5at daaah=====================
		jmp start











	item6:
		;Solving system of linear equations (with 2 unknowns)
		;================================================ABANOUB
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf
		mov edx,offset menu6EnterEquation
		call writestring
		mov edx,offset menu6Equation
		mov ecx,lengthof menu6Equation
		call readstring
		mov menu6EquationLen,eax
		

		mov a,0
		mov b,0
		mov cc,0

		call FindABCEQ
		mov eax,a
		mov a1,eax
		mov eax,b
		mov b1,eax
		mov eax,cc
		mov c1,eax

		mov edx,offset menu6EnterEquation
		call writestring
		mov edx,offset menu6Equation
		mov ecx,lengthof menu6Equation
		call readstring
		mov menu6EquationLen,eax
		call crlf

		mov a,0
		mov b,0
		mov cc,0

		call FindABCEQ
		mov eax,a
		mov a2,eax
		mov eax,b
		mov b2,eax
		mov eax,cc
		mov c2,eax


		mov esi ,offset arr

			mov eax,a1
			mov [esi],eax

			mov eax,b1
			mov [esi+4],eax

			mov eax, c1
			mov [esi+8],eax

			mov eax, a2
			mov [esi+12],eax

			mov eax, b2
			mov [esi+16],eax

			mov eax,c2
			mov [esi+20],eax



			;----------------------------
			;read inputs from user
			;general form X+Y=C

			;----------------------------
			; el kotr el ra2esy
			;[0  1] [x] = [2]
			;[3  4] [y] = [5]


			mov eax, [esi]				;eax=arr[0]
			mul dword ptr [esi + 16]	;eax=arr[0]*arr[4]
			mov mul1,eax				;mul1= el value bta3t el drb mn eax
			;----------------------------
			; el kotr el 3ady
			;[0  1] [x] = [2]
			;[3  4] [y] = [5]


			mov eax, [esi +4]           ;eax=arr[1]
			mul dword ptr [esi +12]     ;eax=arr[1]*arr[3]
			mov mul2,eax				;mul2= el value bta3t el drb mn eax
			;----------------------------
			; tar7 el kotren
	

			mov ecx,mul1       ;ecx=value of mul1
			sub ecx,mul2		;ecx=mul1-mul2
			mov sub1,ecx		; sub1= value mn el suntraction
			;----------------------------
			;el 2esma bta3t el fraction

			;floatdiv var contains 1 to 2asem beha hya el formula kda

			fild floatdiv		;b7ot el value bta3to f el stack to be s(0)
			fild sub1			;b7ot el value bta3t el subtraction to be s(1)
			fdiv				; hna el division bt7sl b el floating point f=s(0)/s(1)
			fstp remfloat		; hna b3ml pop el value ely hya el result w bfdy el stack 5als
	

			;----------------------------
	
	
			mov esi, offset arr
			mov ecx, offset arr2
	
			;[0  1] [x] = [2]
			;[3  4] [y] = [5]
			; b8er el sign b eny bdrb fe '-1'  l 3naser el matrix index[1,3]


			mov eax, [esi+4]
			mul minus
			mov [esi+4],eax

			mov eax, [esi+12]
			mul minus
			mov [esi+12],eax
			;----------------------------


			; hna b3ml change l3naser el kotr el ra2esy inedex[0,4]
			;esi= address of arr
			;ecx= address of arr2

			;[0  1] [x] = [2]
			;[3  4] [y] = [5]

			mov eax, [esi+16]		;eax=arr[4]
			mov [ecx], eax			;arr2[0]=eax

			mov eax,[esi+4]			;eax=arr[1]
			mov [ecx + 4], eax		;arr2[1]=eax

			mov eax, [esi+8]		;eax=arr[2]
			mov [ecx+8],eax			;arr2[2]=eax

			mov eax, [esi+12]		;eax=arr[3]
			mov [ecx+12],eax		;arr2[3]=eax

			mov eax, [esi]			;eax=arr[0]
			mov [ecx+16],eax		;arr2[4]=eax

			mov eax, [esi+20]		;eax=arr[5]
			mov [ecx+20],eax		;arr[5]=eax
			;----------------------------------


			mov esi, offset arr2
			mov ecx, lengthof arr2


		; hna drab el etnen matrix fe b3d
	
			; whna awl row 
			;esi= address of arr2

			;[0  1] [x] = [2]
			;[3  4] [y] = [5]

			mov eax,[esi]				;eax=arr2[0]
			mul dword ptr [esi+8]		;eax=arr2[0] * arr2[2]
			mov arrhelp,eax				;arrhelp[0]=eax

			mov eax,[esi+4]				;eax=arr2[1]
			mul dword ptr[esi+20]		;eax=arr2[1] * arr2[5]
			mov [arrhelp+4],eax			;arrhelp[1]=eax

			mov eax,arrhelp				;eax=arrhelp[0]
			add eax, [arrhelp+4]		;eax=arrhelp[0]+arrhelp[1]
			mov arrRes,eax				;arrRes[0]=eax
			;----------------------------

			;whna tany row

			;esi= address of arr2

			;[0  1] [x] = [2]
			;[3  4] [y] = [5]

			mov eax,[esi+12]			;eax=arr2[3]
			mul dword ptr [esi+8]		;eax=arr2[3] * arr2[2]
			mov arrhelp2,eax			;arrhelp2[0]=eax

			mov eax,[esi+16]			;eax=arr2[4]
			mul dword ptr [esi+20]      ;eax=arr2[4] * arr2[5]
			mov [arrhelp2+4], eax		;arrhelp2[1]=eax

			mov eax, arrhelp2			;eax=arrhelp2[0]
			add eax,[arrhelp2+4]		;eax=arrhelp2[0]+arrhelp2[1]
			mov [arrRes+4], eax			;arrRes[1]=eax
			;----------------------------


			;hna bndrn el fraction fe el final matrix 3a4an yb2a dh el final result
			; to get x and y 
			; x in arrFloatRes
			; y in arrFloatRes+4
			;remfloat dh feh el fraction ely hdrbo f el matrix

	
			;value of x

			fild arrRes    ;push in stack value of arrRes[0] ='x'
			fld remfloat	;push the fraction
			fmul			; multiplcation el etnen
			fistp arrRes	; pop the new value in x=arrRes[0]

	
			;value of y

			fild arrRes+4		;push in stack value of arrRes[1] ='y'
			fld remfloat		;push the fraction
			fmul				; multiplcation el etnen
			fistp arrRes+4		; pop the new value in y=arrRes[1]

			; write x,y in cmd

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar





			mov edx,offset valueOfX
			call writestring

			mov eax,arrRes
			call writeint
			call crlf
			call crlf

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov al,' '
			call writechar

			mov edx,offset valueOfY
			call writestring

			mov eax,[arrRes+4]
			call writeint
			call crlf
			call crlf
		;================================m7dsh y3di el 5at daaah=====================
		jmp start









	item7:
		;Calculate sin(x) and cos(x)
		;================================================ENAS
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		;read degree
		mov n,0
		fild n
		fst t1
		fst t2
		fst t3
		fstp t4

		mov edx,OFFSET menu7EnterDeg
		call writestring
		call readint
		mov deg,eax

		;convert degree into rad
		fild deg				;st(0)=deg
		fld PI					;st(0)=3.14159
		fmul					;st(0)=3.14159*deg
		mov n,180				;deg=180
		fild n					;st(0)=180
		fdiv					;st(0)=3.14159*deg / 180
		fst x					;x=x*deg / 180
		fstp t1					;t1=x*deg / 180

		fld t1
		fsin
		
		call crlf
		mov edx,OFFSET menu7ResultSin
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat
		call crlf
		fstp t

		;calculate sin(X) where X is rad
		mov a,-1

				mov ecx,3
				call power
				fild a
				fmul
				fstp above
				
				
				mov ecx,3
				mov eax,ecx
				call Fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t2
				
				mov ecx,5
				fld x
				fstp t
				call power
				fstp above
				
				mov ecx,5
				mov eax,ecx
				call Fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t3

				mov ecx,7
				call power
				fild a
				fmul
				fstp above
				
				
				mov ecx,7
				mov eax,ecx
				call Fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t4

				fld t1
				fld t2
				fadd
				fld t3
				fadd
				fld t4
				fadd
				
		mov edx,OFFSET menu7ResultSin
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat
		fst sin
		fstp sum
		call crlf
		call crlf
		
		;calculate cos(X)
		fld x
		fcos
		
		mov edx,OFFSET menu7ResultCos
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat
		call crlf
		fstp t
		;calculate cos(X) where X is rad
		mov a,-1
		mov n,0
		fst t1
		fst t2
		fst t3
		fstp t4
				
				mov n,1
				fild n
				fstp t1
				mov ecx,2

				call power
				fild a
				fmul
				fstp above
				
				
				mov ecx,2
				mov eax,ecx
				call fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t2
				
				mov ecx,4
				fld x
				fstp t
				call power
				fstp above
				
				mov ecx,4
				mov eax,ecx
				call fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t3

				mov ecx,6
				call power				
				fild a
				fmul
				fstp above
				
				
				mov ecx,6
				mov eax,ecx
				call fact
				mov n,eax
				fld above
				fild n
				fdiv
				fstp t4

				fld t1
				fld t2
				fadd
				fld t3
				fadd
				fld t4
				fadd
				fst sum
				;====-=-=-=

		
		mov edx,OFFSET menu7ResultCos
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat
		fst cos
		fstp sum
		call crlf
		call crlf

		fld sin
		fld cos
		fdiv

		mov edx,OFFSET menu7ResultTan
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar

		call writefloat	
		fstp tan



		call crlf
		call crlf


		fld one
		fld sin
		fdiv
		mov edx,OFFSET menu7ResultCsc
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat	
		fstp csc


		call crlf
		call crlf



		fld one
		fld cos
		fdiv
		mov edx,OFFSET menu7ResultSec
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat	
		fstp sec

		call crlf
		call crlf



		fld one
		fld tan
		fdiv
		mov edx,OFFSET menu7ResultCot
		call writestring
		mov eax,deg
		call writedec
		mov al,')'
		call writechar
		mov al,'='
		call writechar
		mov al,' '
		call writechar
		call writefloat	
		fstp cot

		call crlf 
		call crlf
		;================================m7dsh y3di el 5at daaah=====================
		jmp start
		;tan=sin/cos
		;sec=1/cos
		;csc=1/sin
		;cot=i/tan

	item8:
		;tanIn
		;secIn
		;cscIn
		;cotIn

		;Calculate sin(x)Inverse and cos(x)Inverse
		;================================================ENAS
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		;============================write code here yabni===========================
		call crlf
		mov edx,OFFSET menu8EnterDeg
		call writestring
		call readfloat
		;fld one
		;fxch st(1)
		;fdiv
		fst x
		fstp t1

		call crlf
		call calculateSineInverse
		
		mov edx,OFFSET menu8ResultSin
		call writestring
		fld x
		call writefloat
		mov eax,deg
		mov al,')'
		call writechar
		mov al,'~'
		call writechar
		mov al,' '
		call writechar
		mov eax,deg
		call writeint
		
		call crlf

		fld x
		fstp t1
		call calculateCosInverse

		mov edx,OFFSET menu8ResultCos
		call writestring
		fld x
		call writefloat
		mov eax,deg
		mov al,')'
		call writechar
		mov al,'~'
		call writechar
		mov al,' '
		call writechar
		mov eax,deg
		call writeint

		call crlf

		fld one
		fxch st(1)
		fdiv
		fst x
		fstp t1

		call crlf
		call calculateSineInverse
		
		mov edx,OFFSET menu8Resultcsc
		call writestring
		fld x
		call writefloat
		mov eax,deg
		mov al,')'
		call writechar
		mov al,'~'
		call writechar
		mov al,' '
		call writechar
		mov eax,deg
		call writeint
		
		call crlf

		fld one
		fxch st(1)
		fdiv
		fld x
		fstp t1
		call calculateCosInverse

		mov edx,OFFSET menu8Resultsec
		call writestring
		fld x
		call writefloat
		mov eax,deg
		mov al,')'
		call writechar
		mov al,'~'
		call writechar
		mov al,' '
		call writechar
		mov eax,deg
		call writeint

			

		call crlf
		call crlf
		;================================m7dsh y3di el 5at daaah=====================
		jmp start

item99:
	mov edx,offset menuErrorMsg
	call crlf
	call writestring
	call crlf
	item9:
		;Calculate P(n,r)
		;================================================ESLAM ASHRAF
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		call crlf
		mov edx, offset str1;
		call writestring
		call readint
		mov n,eax
		mov ebp,n

		mull:

		cmp ebp,1
		jne NotEqual
	
		mov result1,eax

	enterR:
		mov edx,offset str2
		call writestring 
		call readint
		mov esi,eax
		cmp esi,n
		ja item99

		mov eax,n
		sub eax,esi
		mov n,eax

		mov ecx,n
	
		compa:
		cmp ecx,1
		jne NotEqual2

		mov result2,eax
		jmp pPrint

		NotEqual:
		sub ebp,1
		mul ebp
		jmp mull

		NotEqual2:
		sub ecx,1
		mul ecx
		jmp compa
		
		pPrint:
		call crlf
		mov edx,0
		mov eax,result1
		div result2
		mov edx,offset menuResult                      ;edx=offset remender
		call writestring                             ;print (el result  ahooooooooooooo )
		call writeint                                ; print the result
		call crlf
		call crlf

		mov finalres,eax
	

		
		;============================m7dsh y3di el 5at daaah===========================
		jmp start








	item10:
		;Calculate X MOD Y
		;================================================ENAS
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		l1:
		call crlf
		                                         
			mov edx,offset divident                      ;edx=offset divident
			call writestring                             ;print (Enter el divident yabta )
			CALL READINT                        ;value xmod from user
			MOV xmod,eax	                     ; ymod=eax

			mov edx,offset divisor                       ;edx=offset divisor
			call writestring                             ;print (Enter el divisor yabta )
	      	CALL READINT                       ;value ymod from user
	 		 mov  ymod ,eax                     ; ymod=eax
			cmp  ymod ,0                       ; comp if y=0
			 jnz l2   
			 
			 call crlf
			mov edx,offset error                         ;edx=offset error
			call writestring                             ;print (Enter el arkam tani twa2tiii b2a  )
			call crlf

			 jmp l1                                  ; if y=0 jump to l1
			 l2:
				call crlf
				call modulus                                 
				mov eax,modres                               ;eax=modres
				mov edx,offset menuResult                      ;edx=offset remender
				call writestring                             ;print (el result  ahooooooooooooo )
			call writeint                                ; print the result
			call crlf
			call crlf
		;============================m7dsh y3di el 5at daaah===========================
		jmp start










	item11:
		;Calculate (equationnnn)
		;================================================ABDEL-HAFEEZ
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		call crlf
		mov edx,offset menu11EnterEquation		;edx=offset menu11EnterEquation
		call writestring						;print (Enter Equation YALA : )

		mov edx,offset menu11Equation			;edx=menu11Equation
		mov ecx,lengthof menu11Equation			;ecx=51
		call readstring							;menu11Equation= FromUser
		mov menu11EquationLen,eax				;menu11EquationLen= length of string which user entered
		mov edx,offset menu11EnterEquationX		;edx=offset menu11EnterEquationX
		call writestring						;print (Enter X YALA : )
		call readint							;enter from user
		mov menu1X,eax							;menu11X=eax
		call crlf
		;============================write code here yabni===========================

		mov ebp, offset menu11Equation
		mov menu11counter,0
		mov menu11Result,1		

		cal:
		mov menu1Xp3,1
		mov menu1Xp2,1
		mov menu1Xp1,1
		mov menu1Xp0,1
		mov al,[ebp]
		
		mov menu1Result,0
		
		mov edx,offset menu1Equation
		calEq:
		inc menu1Result
		inc ebp
		mov al,[ebp]
		mov [edx],al
		inc edx
		mov al,[ebp+1]
		cmp al,')'
		jne calEq
		mov eax ,menu1Result
		mov menu1EquationLen,eax
		call CalculateFOFX
		inc menu1Result
		inc menu1Result
		mov eax,menu1Result
		add menu11counter,eax
		mov eax,menu1Xp0
		add eax,menu1Xp1
		add eax,menu1Xp2
		add eax,menu1Xp3
		mul menu11Result
		mov menu11Result,eax

		mov eax ,menu11EquationLen
		cmp eax,menu11counter
		je display
		inc ebp
		inc ebp
		jmp cal
		
		display:
		mov edx,offset menuResult				;edx=offset menuResult
		call writestring						;print(Result is : )
		mov eax ,menu11Result
		call writeint
		call crlf
		call crlf
		
		
		;============================m7dsh y3di el 5at daaah===========================
		jmp start











	itemEXP:
		;=======================================================
		;Calculate e^x
		;================================================AHMAD ASHRAF
		;==================={{{COMMENT YOUR CODE}}}===================
		;================{{{MAKE YOUR LOGIC IN PROCS}}}===============
		call crlf
		mov edx , offset message
		call writestring
		call readint
		mov xEXP , eax
		mov ecx , xEXP
		fld yEXP
		mov eax,xEXP
		cmp eax , 0
		jne con
	
		jmp popd

		jmp finishh
		con:
			fld const
			fmul 
		loop con
		
		popd:
		call crlf
		fstp numberfloat
		mov edx,offset menuResult				;edx=offset menuResult
		call writestring						;print(Result is : )
		call writemyfloat
	
		finishh:
		call crlf
		call crlf
		;============================m7dsh y3di el 5at daaah===========================
		jmp start

		;=====================================================================
		;=====================================================================
		;=====================================================================
		;=====================Printing dotssssss==============================
		;=====================================================================
		;=====================================================================
	item12:
		mov edx,OFFSET menu121
		call writestring
		call crlf
		
		mov edx,OFFSET menu122
		call writestring
		call crlf

		mov edx,OFFSET menu123
		call writestring
		call crlf

		mov edx,OFFSET menu124
		call writestring
		call crlf

		mov edx,OFFSET menu125
		call writestring
		call crlf

		mov edx,OFFSET menu126
		call writestring
		call crlf

		mov edx,OFFSET menu127
		call writestring
		call crlf

		mov edx,OFFSET menu128
		call writestring
		call crlf
		jmp EX

	EX:exit
main ENDP

END main