*
*  Establezco algunos Set
*
CLEAR MACROS
CLEAR
CLEAR ALL
CLOSE ALL
SET SYSMENU TO 
SET EXCLUSIVE OFF
SET MULTILOCK ON
SET REPROCESS TO 1
SET LOCK ON
SET CENTURY TO 19 ROLLOVER 60
SET TALK OFF
SET DELE ON
SET DATE DMY
SET STATUS BAR OFF
SET BELL OFF
SET MESSAGE TO
SET SAFETY OFF
SET EXACT OFF
SET PATH TO DATA
SET STRICTDATE TO 0
SET SYSMENU OFF

PUBLIC oApp
SET CLASSLIB TO \clientes\comun\libs\clasesbases
oApp=CREATEOBJECT("entorno")

oApp.setup

_SCREEN.Caption ="VOX - Controlador de Surtidor"

DO menuVOX.mpr

ON ERROR DO ErrorAplicacion
ON SHUTDOWN oApp.CerrarAplicacion

READ EVENTS

oApp.Cleanup
RELEASE oApp
ON SHUTDOWN
RELEASE ALL EXTENDED
CLEAR
CLEAR ALL
ON ERROR
SET LIBRARY TO 
