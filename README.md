# REQUISITOS PREVIOS

1. Correr en la terminal:

	sudo apt-get install gcc-avr binutils-avr gdb-avr avr-libc

2. Ir a la carpeta avrdude-5.6 en el repositorio y correr en la terminal:

	- ./configure
	- make
	- sudo make install

NOTA 1: Si hubiera problemas al correr 'make' con el paquete flex remover el paquete flex que se tenga con 'apt remove flex', luego ir a la carpeta flex-2.5.35 y correr:
	
	- ./configure
	- make
	- sudo make install

NOTA 2: Si al correr 'make' sale un error con 'yacc', correr:

	- sudo apt-get install bison -y
	- sudo apt-get install byacc -y

Correr los pasos anteriores para instalar flex.

NOTA #: De llegar a ocurrir un error 'help2man not found' correr 'sudo apt-get install help2man'.

Luego volver a la carpeta avrdude-5.6, correr 'make clean' antes de repetir los pasos anteriores.

3. Escribir en la terminal 'sudo nano /etc/udev/rules.d/usbasp.rules'.

4. Pegar el siguiente contenido:

#SUBSYSTEM=="usb", ATTR{product}=="USBasp", ATTR{idProduct}=="05dc", ATTRS{idVendor}=="16c0", MODE="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="05dc", GROUP="users", MODE="0666" 

6. Apretar 'Ctrl + X' y guardar el archivo.

# INSTALACION DE ECLIPSE

1. Abrir la terminal y correr 'sudo apt-get install eclipse-platform'.

2. Abrir la terminal en el repositorio y escribir 'sudo cp ./eclipse.jpg /usr/local/share/icons/hicolor/128x128', ese comando va a copiar el icono de Eclipse a una carpeta del sistema. 

3. Luego de que se termine de instalar, crear una acceso desde el escritorio corriendo en la terminal 'nano ~/Desktop/eclipse.desktop' y copiando el siguiente contenido:

[Desktop Entry]
Name=Eclipse
Exec=eclipse
Icon=/usr/local/share/icons/hicolor/128x128/eclipse.jpg
Type=Application

4. Apretar 'Ctrl + X' y guardar el archivo.

5. Ejecutar Eclipse, elegir un workspace por default y luego ir a la ventana 'Help -> Install new software'. Click en 'Add' y copiar http://avr-eclipse.sourceforge.net/updatesite en 'Location'. Agregar y dar todos los permisos que pida al instalar. Eclipse va a pedir reiniciar el software para que todo este en orden.

# CONFIGURACION DE AVRDUDE EN ECLIPSE

1. Crear un nuevo proyecto en C eligiendo 'AVR Cross Target Application' y elegir el microcontrolador que se este usando.

2. Una vez creado el proyecto, ir a la ventana 'Project -> Properties'.

3. Ir a la seccion 'C/C++ Build -> Settings' y tildar 'Generate HEX file for Flash Memory', 'Print Size' y 'AVRDude'.

4. Ir a la seccion 'AVR -> AVRDude' y en 'Programmer configuration hacer click en 'New'. Dar el nombre de 'USBasp' y buscarlo en la lista de 'Programmer Hardware'. 

5. Aplicar los cambios.

6. Ir a 'AVR -> Target Hardware' y hacer click en 'Load from MCU'.

7. Revisar los pasos anteriores si hubo algun error al hacer el paso 6.
