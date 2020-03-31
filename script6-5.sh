total= `cat /home/alumno/Escritorio/Ejercicio6B/listado.txt | wc -l`
procesoswindows=0
contadorwindows=0
procesoslinux=0
contadorlinux=0
i=1


while [ $i -le $total ]; do

    sistema=`awk'{print $2}' /home/alumno/Escritorio/Ejercicio6B/listado.txt | head -${i} | tail -1 |`
    procesos=`awk'{print $3}' /home/alumno/Escritorio/Ejercicio6B/listado.txt | head -${i} | tail -1 |`
    
    if[$sitema="Windows"]; then
	procesoswindows=$(($procesoswindows+$procesos))
	contadorwindows=$(($contadorwindows+1))
    fi

    if[$sitema="Linux"]; then
	procesoslinux=$(($procesoslinux+$procesos))
	contadorlinux=$(($contadorlinux+1))
    fi

    i=$(($i+1))

done

echo "Linux -> $contadorlinux $procesoslinux"
echo "Windows -> $contadorwindows $procesoswindows"