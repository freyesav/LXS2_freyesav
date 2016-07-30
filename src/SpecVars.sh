#! /bin/bash
## Este Script revisa los argumentos de un Script

#  Definicion de variables
ERRORLOG="$0.err"


if cp archivo1.txt archivo1.txt.backup 2> $0.err
then		
	if cp archivo2.txt archivo2.txt.backup 2>$ERRORLOG
	then
			echo "El respaldo de ambos archivos se ejecuto correctamente"
		echo "El respaldo se ejecuto correctamente"
	fi

else 
	echo " El archivo1 no pudo ser respaldado,por lo tanto el archivo2 tampoco fue respaldado  verifique" $ERRORLOG
	cat $ERRORLOG | mial -s "Error de Respaldo" freyes.av@gmail.com

fi  
