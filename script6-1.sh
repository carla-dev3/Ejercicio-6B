read numero
valor=1

for i in $( cat nombres.txt ); do
    echo "|_ _ _ _$i"
while [ $valor -le $numero ]; do
    echo "|        |_ _ _personal$valor"

((valor++))
done

valor=1

done