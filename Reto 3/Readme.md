# Solucion propuesta

> 1. Se procede a crear un enlace duro con el comando `ln <target> <file>`, el cual actua como un espejo del archivo original, es decir, tiene la misma ubicacion del inode. Si se elimina el archivo original, el enlace duro aun tendra el contenido del archivo original.
> 2. Si se hubiera creado un enlace simbolico (suave) con el comando `ln -s <target> <file>`, entonces al eliminar el archivo el enlace no va a tener el contenido esperado. 
