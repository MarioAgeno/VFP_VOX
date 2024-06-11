CLEAR 
nDecimal =1
cResp='00001973~01~b~00002007~00000307~000653~01~01'
*~00001837~01~b~00001002~00000154~000653~01~01~00001633~01~b~00001307~00000200~000653~01~01~00001565~01~b~00005007~00000761~000658~01~01~00001157~01~b~00005001~00000760~000658~01~01~00001089~01~b~00001100~00000167~000658~01~01~00001021~01~b~00005000~00000760~000658~01~01~00000817~01~b~00001001~00000152~000658~01~01~00000613~01~b~00001003~00000153~000658~01~01~00000477~01~b~00003501~00000532~000658~01~01'
o=0
FOR I=1 TO 5 
	n=AT('~',cResp,o+1)
	nID=VAL(SUBSTR(cResp,n-8,8))
	?nID
	n=AT('~',cResp,o+2)
	nCara=VAL(SUBSTR(cResp,n-2,2))
	?nCara
	n=AT('~',cResp,o+3)
	cMang=SUBSTR(cResp,n-1,1)
	?cMang
	n=AT('~',cResp,o+4)
	nImporte=VAL(SUBSTR(cResp,n-8,8))/nDecimal 
	?nImporte
	n=AT('~',cResp,o+5)
	nLitros=VAL(SUBSTR(cResp,n-8,8))/100
	?nLitros
	n=AT('~',cResp,o+6)
	nPrecio=VAL(SUBSTR(cResp,n-6,6))/nDecimal
	?nPrecio
	n=AT('~',cResp,o+7)
	nProducto=VAL(SUBSTR(cResp,n-2,2))
	?nProducto
	n=AT('~',cResp,o+8)
	nPago=VAL(SUBSTR(cResp,n-2,2))
	?nPago
	o=o+8
	cNombre=""
*!*		IF nProducto#0
*!*			IF SEEK(nProducto,"PN","producto")
*!*				cNombre=pn.nombre
*!*			ENDIF 
*!*		ENDIF 
*!*		INSERT INTO ventas10 (id, Cara, Manguera, Importe, Litros, Precio, producto, nombre, pago, Aforador) ;
*!*			VALUES (nID,nCara,cMang,nImporte,nLitros,nPrecio,nProducto,cNombre,nPago,0)
ENDFOR 