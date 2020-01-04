#INSTALACION DEL PLUGIN DE AVR PARA ECLIPSE PARA PROGRAMAR MCUs DE ATMEL

1. Correr en la terminal:

	sudo apt-get install gcc-avr binutils-avr gdb-avr avr-libc

2. Ir a la carpeta avrdude-5.6 y correr en la terminal:

	- ./configure
	- make
	- sudo make install

NOTA: Si hubiera problemas al correr 'make' con el paquete flex remover el paquete flex que se tenga con 'apt remove flex', luego ir a la carpeta flex-2.5.35 y correr:
	
	- ./configure
	- make
	- sudo make install

Luego volver a la carpeta avrdude-5.6, correr 'make clean' antes de repetir los pasos anteriores.

3. Una vez instalado Eclipse, ir a la ventana 'Help -> Install new software'. Click en 'Add' y copiar http://avr-eclipse.sourceforge.net/updatesite en 'Location'. Agregar y dar todos los permisos que pida al instalar. Eclipse va a pedir reiniciar el software para que todo este en orden.

#CONFIGURACION DE AVRDUDE EN ECLIPSE

1. Crear un nuevo proyecto en C eligiendo 'AVR Cross Target Application' y elegir el microcontrolador que se este usando.

2. Una vez creado el proyecto, ir a la ventana 'Project -> Properties'.

3. Ir a la seccion 'C/C++ Build -> Settings' y tildar 'Generate HEX file for Flash Memory', 'Print Size' y 'AVRDude'.

4. Ir a la seccion 'AVR -> AVRDude' y en 'Programmer configuration hacer click en 'New'. Dar el nombre de 'USBasp' y buscarlo en la lista de 'Programmer Hardware'. 

5. Aplicar los cambios.

6. Ir a 'AVR -> Target Hardware' y hacer click en 'Load from MCU'.

7. Revisar los pasos anteriores si hubo algun error al hacer el paso 6.
