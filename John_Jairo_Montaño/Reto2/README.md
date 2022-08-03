La solución que propongo sería:
mover el archivo a una carpeta de documentos diferente al /home restringir el acceso a escritura de la carpeta que contiene el archivo y al archivo como tal con los comandos: 
chmod go-w Lista_Precios
chmod -R go-w nuevo_directorio
además indicarle que cierre su sesión después de utilizar el equipo. 