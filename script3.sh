echo "Ingrese un nombre de usuario para verificar: "

read name

if grep $name /etc/passwd > /dev/null
then
	echo "$name esta en el sistema"
else
	echo "$name no esta en el sistema"
fi
