lineas= `cat /home/alumno/Escritorio/Ejercicio6B/precipitaciones.txt | wc -l`
i=1

while [ $i -le $lineas ]; do

    litrolluvia=`awk'{print $2}' /home/alumno/Escritorio/Ejercicio6B/precipitaciones.txt | head -${i} | tail -1 |`
    dia=`awk'{print $1}' /home/alumno/Escritorio/Ejercicio6B/precipitaciones.txt | head -${i} | tail -1 |`
    
    if[$litrolluvia -eq 0]; then
	echo $dia
    fi

    i=$(($i+1))

done
