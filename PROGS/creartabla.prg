*.*
*.* Crea una nueva tabla de Lectura de estados
*.*
cClave=INPUTBOX("Ingrese Password: ","MAASoft - Acceso","")
IF ALLTRIM(cClave)#DTOS(DATE())
	MESSAGEBOX("Clave incorrecta, Comunicarse con el soporte tecnico",16,"Atencion")
	RETURN 
ENDIF 
CLOSE TABLES ALL 

USE lectura EXCLUSIVE 

AFIELDS(alLectura,"lectura")
CREATE CURSOR ltLectura FROM ARRAY alLectura
RELEASE alLectura
SELECT lectura
USE
ERASE lectura.dbf
ERASE lectura.cdx

SELECT ltLectura
COPY TO data\LECTURA.DBF 

CLOSE TABLES all
USE lectura
INDEX ON vtanro TAG vtanro

CLOSE TABLES ALL 

WAIT WINDOW "Nueva Tabla de lectura Finalizado"

