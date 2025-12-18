# Ejercicio-3
Ejercicio 3:

Esto está basado en el análisis de archivos logs los cuales contienen correos electrónicos dentro de ellos. Hay mucha información dentro de esos archivos, y queremos que solo se identifiquen los correos electrónicos que hay dentro de él.

Primero empezaremos creando la estructura de nuestro proyecto el cual llamaremos ejercicio 3:

Empezaremos explicando el archivo ic.yml. Se ejecuta cuando se hace un push (cuando subimos un nuevo archivo de logs por ejemplo se ejecutará. Creará una máquina virtual con ubuntu y descarga nuestro repositorio dentro. Una vez hecho esto, le dará permisos de ejecución a nuestro script que veremos luego y lo ejecuta.


Ahora pasaremos a ver qué hace nuestro script para entender un poco más el funcionamiento del mismo:


El script se ejecutará utilizando Bash, nos crea un archivo de salida llamado emails.txt El REGEX es una expresión regular definiendo el formato de un correo electrónico. Luego con grep nos busca los correos dentro de los archivos que estén dentro de la carpeta log de nuestro directorio. Para ir un poco más allá se añade un sort para que los correos que sean exactamente iguales sean eliminados y nos ordena los correos.
Con echo nos muestra los correos que han sido encontrados.

Ahora veremos un ejemplo del archivo de log que he subido con el que haré las pruebas:

Ahora debemos de hacer un commit y un push para subir nuestros archivos y al hacer el push que se lance nuestro proyecto para detectar los correos electrónicos dentro del archivo de logs. Nos dirigimos a github → actions y vemos las diferentes pruebas que he realizado para ir comprobando que todo funcionase de manera correcta.

Ahora entramos en la última prueba y vemos el resultado de la misma y nos salen los correos detectados dentro del archivo:
