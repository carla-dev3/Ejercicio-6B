numDias= `cat /home/alumno/Escritorio/Ejercicio6B/precipitaciones.txt | wc -l`
i=1
promedio=0

while [ $i -le $numDias ]; do

    num=`awk'{print $2}' /home/alumno/Escritorio/Ejercicio6B/precipitaciones.txt | head -${i} | tail -1 |`
    promedio=`expr $promedio + $num`
    i=`expr $i +1` 

done

promedio=`expr $promedio / $numDias`
echo "La media de precipitaciones es de $promedio"