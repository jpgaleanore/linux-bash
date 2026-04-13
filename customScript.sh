echo "ingrese su nombre: "

read name

echo "ingrese su apellido: "

read lastname

echo "ingrese su edad: "

read age

while [ $age -le 18 ]

do

	echo "Eres menor de edad, tienes que ser mayor de edad para entrar al sistema"
	echo "Ingrese su edad: "
	read age

done

echo "Bienvenido al sistema $name $lastname"
echo "Desea crear una carpeta con su nombre en el directorio principal?"
echo "1. Si"
echo "2. No"

read option

if [ $option -eq "1" ]; then
	
	mkdir "${name}_${lastname}"
	cd "${name}_${lastname}"
	touch welcome_file.txt

	echo "Carpeta creada y archivo creado..."

else
	echo "Gracias por usar el sistema"

fi

