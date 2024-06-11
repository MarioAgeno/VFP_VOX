CLOSE TABLES ALL 
ERASE lectura.cdx

USE lectura EXCLUSIVE 
PACK 
INDEX ON vtanro TAG vtanro

CLOSE TABLES all
WAIT WINDOW "Generando Indices nuevo Finalizado"

