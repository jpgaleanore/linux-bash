# Bash Scripting - Guía Básica

## Introducción a Vim

Vim es un editor de texto muy poderoso para la terminal. Aquí los comandos básicos:

### Modos de Vim
- **Modo Normal**: El modo por defecto. Presiona `Esc` para volver a él.
- **Modo Inserción**: Presiona `i` para insertar texto.
- **Modo Comando**: Presiona `:` para ejecutar comandos.

### Comandos esenciales
| Comando | Descripción |
|---------|-------------|
| `vim archivo.sh` | Abrir/crear un archivo |
| `i` | Entrar en modo inserción |
| `Esc` | Volver al modo normal |
| `:w` | Guardar el archivo |
| `:q` | Salir de vim |
| `:wq` o `:x` | Guardar y salir |
| `:q!` | Salir sin guardar |
| `dd` | Eliminar línea actual |
| `yy` | Copiar línea actual |
| `p` | Pegar |
| `u` | Deshacer |

---

## Comandos usados en los scripts

### Entrada/Salida
| Comando | Descripción | Ejemplo |
|---------|-------------|---------|
| `echo` | Imprime texto en la terminal | `echo "Hola mundo"` |
| `read` | Lee entrada del usuario | `read nombre` |

### Fecha y Calendario
| Comando | Descripción | Ejemplo |
|---------|-------------|---------|
| `cal` | Muestra el calendario del mes | `cal` |
| `date` | Muestra la fecha actual | `date +%A` (día de la semana) |

### Sistema de archivos
| Comando | Descripción | Ejemplo |
|---------|-------------|---------|
| `mkdir` | Crea un directorio | `mkdir mi_carpeta` |
| `cd` | Cambia de directorio | `cd mi_carpeta` |
| `touch` | Crea un archivo vacío | `touch archivo.txt` |

### Búsqueda
| Comando | Descripción | Ejemplo |
|---------|-------------|---------|
| `grep` | Busca texto en archivos | `grep usuario /etc/passwd` |

### Estructuras de control

#### Condicional if
```bash
if [ condición ]; then
    # código si es verdadero
else
    # código si es falso
fi
```

#### Bucle while
```bash
while [ condición ]
do
    # código a repetir
done
```

### Operadores de comparación
| Operador | Descripción |
|----------|-------------|
| `-lt` | Menor que (less than) |
| `-le` | Menor o igual (less or equal) |
| `-gt` | Mayor que (greater than) |
| `-ge` | Mayor o igual (greater or equal) |
| `-eq` | Igual (equal) |
| `-ne` | No igual (not equal) |

### Variables
```bash
nombre="Juan"           # Asignar valor
echo $nombre            # Usar variable
echo "${nombre}_dato"   # Concatenar con texto
```

### Redirección
| Símbolo | Descripción |
|---------|-------------|
| `>` | Redirige salida a archivo (sobrescribe) |
| `>>` | Redirige salida a archivo (añade) |
| `> /dev/null` | Descarta la salida |

---

## Cómo ejecutar un script Bash

### 1. Dar permisos de ejecución
Antes de ejecutar un script, necesitas darle permisos:

```bash
chmod +x mi_script.sh
```

**Opciones de chmod:**
| Comando | Descripción |
|---------|-------------|
| `chmod +x archivo.sh` | Añade permiso de ejecución |
| `chmod 755 archivo.sh` | Lectura/ejecución para todos, escritura solo dueño |
| `chmod 700 archivo.sh` | Solo el dueño puede leer, escribir y ejecutar |

### 2. Ejecutar el script

**Opción A - Con ruta:**
```bash
./mi_script.sh
```

**Opción B - Con bash directamente:**
```bash
bash mi_script.sh
```

**Opción C - Con source (ejecuta en el shell actual):**
```bash
source mi_script.sh
```

---

## Shebang

Es recomendable añadir al inicio de cada script:
```bash
#!/bin/bash
```
Esto indica al sistema qué intérprete usar para ejecutar el script.
