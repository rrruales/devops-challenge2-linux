## 4. Problema propuesto
Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado Lista_Precios en su directorio /home. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo sea vulnerado porque otros empleados utilizan su equipo al finalizar su turno. Actualmente, Roxs posee una contraseña segura, pero él necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.

### Solucion

Dado que el proposito de Roxs es que su archivo no pueda ser accedido por nadie mas, ni un grupo especifico, ni otra persona que utilice el usuario, la solucion en este caso seria modificar los permisos para que solo Roxs pueda, ver, ejecutar y modificar el archivo.<br>

Para esto, podemos modificar los permisos del archivo con el comando <i>chmod</i>, en este caso solo le daremos permisos al propietario del archivo, en otras palabras Roxs, y removeremos todos los permisos de grupos y otros.<br>

El resultado serian los comandos siguientes:
```bash
chmod u+rwx Lista_Precios
chmod go-rwx Lista_Precios
```

Una vez modifiquemos el archivo, podemos verificar que los permisos han sido modificados usando el siguiente comando:
```bash
ls -l
```