read directorio
if [ -d $directorio ]; then
    echo "Existe el directorio"
    rm $directorio *.txt
else
    echo "No existe el directorio"
fi 