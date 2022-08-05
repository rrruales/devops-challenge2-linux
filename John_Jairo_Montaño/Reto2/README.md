## Solución al bonus

La solución que propongo sería:

1. mover el archivo a una carpeta de 
documentos diferente al /home
2. restringir el acceso a escritura de la carpeta que contiene el archivo y al archivo como tal con los comandos: `chmod go-w Lista_Precios`
          `chmod -R go-w nuevo_directorio`
3. además indicarle que cierre su sesión después de utilizar el equipo.