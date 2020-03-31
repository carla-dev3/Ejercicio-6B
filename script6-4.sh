maxnumero= `cat numeros.txt | wc -l`
linea=1
countpar=0
countimpar=0

while [ $linea -le $maxnumero ]; do

    n=`cat numeros.txt | head -${linea} | tail -1`

    if[ $((n/2)) -eq 0 ]; then

	echo $n
	echo "par"
	countpar=$(($countpar + 1))
    
    else

	echo $n
	echo "impar"
	countimpar=$(($countimpar + 1))

    fi

    linea=`expr $linea +1` 

done

