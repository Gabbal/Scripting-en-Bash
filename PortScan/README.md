# Escaner de puertos

Una alternativa a la enumeración de puertos utilizando herramientas externas es aprovechar el poder de los descriptores de archivo en sistemas Unix. Los descriptores de archivo son una forma de acceder y manipular archivos y dispositivos en sistemas Unix. En particular, la utilización de /dev/tcp permite la conexión a un host y puerto específicos como si se tratara de un archivo en el sistema.

Se programó este script para realizar la enumeración de puertos utilizando /dev/tcp en Bash, realizando una conexión a cada puerto de interés y comprobando si el puerto está abierto o cerrado en función de si se puede enviar o recibir datos. Mediante el uso del comando como “echo” se aplicó redireccionamientos al /dev/tcp. El código de estado devuelto por el comando se utilizó para determinar si el puerto está abierto o cerrado.

Aunque esta alternativa puede ser menos precisa y más lenta que el uso de herramientas especializadas como Nmap, es una opción interesante y viable para aquellos que buscan una solución rápida y sencilla para la enumeración de puertos en sistemas Unix. Además, este enfoque puede proporcionar una mejor comprensión de cómo funcionan los descriptores de archivo en los sistemas Unix y cómo se pueden utilizar para realizar tareas de red.
