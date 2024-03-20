
<!---
   Para comentarios usar este bloque para documentar pendientes, secuencias, etc.
--->


![](https://s3.amazonaws.com/videos.pentesteracademy.com/videos/badges/low/arm-assembly.png)

Borrar y modificar README

# Utilizar los dos directorios

- code  - ahi depositar sus programas los ***archivos extensión *.s****  (Source File) algunos autores en x86 de ponen .asm y en otras plataformas ARM compatibles la extension *.s
- Todo programa lleva su comentario en la parte de arriba, objetivo y nombre del programador minimo, como templete
- images  - de haber algo de pantallas ahi se presentaran, su busca documentarlas en MARKDOWN el código es:

``` ![](images/---archivo.jpg---) recordar que no lleva espacios```

<!---
  Los nombres de las imagenes no deben cambiar de preferenci el nombre del programa como:  KIOSKO.cpp (su pantallas serian KISOCO.jpg, KIOSCO-1.jpg, KIOSCO-2.jpg ... )
  Y asi procurar estar agrupados.
--->



- Programa en MarkDown es inicia con tres tildes * (`) sin espacio, seguido de el lenguaje de programacion, al final del codigo se poner otra vez los mismos tilder..

No se usan espacios en nombres de archivos, usar los nombres estilo camelCase (primera palabra minusculas, mayuscula solo la 1ra letra de cada palabra subsecuente):  ejemplo: sensorHumo, etc.

Suerte.



------

<pre>

	<p align=center>

Tecnológico Nacional de México
Instituto Tecnológico de Tijuana

Departamento de Sistemas y Computación
Ingeniería en Sistemas Computacionales

Semestre:
Febrero - Junio 2022

Materia:
Lenguajes de interfaz

Docente:
M.C. Rene Solis Reyes 

Unidad:
1

Título del trabajo:
Ejercicios ......

Estudiantes:
América Elizabeth Zavaleta Ramirez
Ivan Jair Vizcarra Gomez 
Jose Ricardo Pasillas Hernández
Abraham Ezequiel Garcia Campos
Jorge Alexis Lua Velasco

.......


		
	</p>

</pre>

<pre>

	<p align=left>

<p align=justify>
	
# **Manipulación de memoria y arrays**
	
Direcciones de memoria
	En programación, cada variable o dato almacenado en la memoria de una computadora tiene una 
	dirección única. Estas direcciones son identificadores que indican la ubicación física en la 
	memoria de un valor específico. Las direcciones de memoria se suelen representar en hexadecimal 
	y son utilizadas para acceder y manipular los datos almacenados.

Acceso a memoria
	El acceso a memoria se refiere al proceso de leer o escribir datos en una ubicación específica 
	de la memoria. Esto se puede hacer utilizando las direcciones de memoria correspondientes a las 
	variables o datos que se desean acceder. Dependiendo del lenguaje de programación y del nivel 
	de abstracción, este acceso puede ser directo o indirecto.

Uso de punteros
	Un puntero es una variable que almacena la dirección de memoria de otra variable. En muchos 
	lenguajes de programación, los punteros se utilizan para acceder y manipular datos de manera 
	indirecta, es decir, en lugar de manipular los valores directamente, se manipulan las direcciones 
	de memoria que apuntan a esos valores. Los punteros son especialmente útiles para la gestión 
	dinámica de memoria y para optimizar el rendimiento de ciertas operaciones.
	El uso de punteros en arrays es una técnica común en lenguajes como C y C++ que permite trabajar 
	con arrays de manera más flexible y eficiente, se puede usar de las siguientes distintas maneras:
	* Declaración de arrays usando punteros: En C y C++, el nombre de un array actúa como un puntero 
	al primer elemento del array.
	* Acceso a elementos de arrays mediante punteros: Una vez que tienes un puntero que apunta al 
	primer elemento de un array, puedes acceder a los elementos restantes del array utilizando 
	aritmética de punteros.
	* Iteración sobre arrays con punteros: Los punteros pueden ser utilizados para iterar sobre 
	los elementos de un array de manera más eficiente que utilizando índices.
	* Pasaje de arrays a funciones mediante punteros: Al pasar un array a una función como argumento, 
	en realidad se pasa un puntero al primer elemento del array, lo que permite manipular el array 
	dentro de la función utilizando punteros.

Definición y manipulación de arrays
	Un array es una estructura de datos que permite almacenar una colección de elementos del mismo 
	tipo. Los arrays se definen especificando el tipo de datos de los elementos que contendrá y el 
	tamaño del array. La manipulación de arrays incluye operaciones como la asignación de valores a 
	elementos individuales, la lectura de valores de elementos individuales, la iteración sobre todos 
	los elementos del array, entre otras. Los arrays son una herramienta fundamental en la programación 
	para almacenar y manipular colecciones de datos de manera eficiente.
	
</p>
		
		
Repositorio en el cual se desarrollaron distintos ejercicios en el lenguaje de 
programacion c++, tomados del libro "Problemas para resolver con computadora" 
1ra edicion (1985), por el autor Donald D. Spencer. 

Los ejercicios corresponden al capitulo 6 del libro, entre las paginas 77 a 86.
Se realizaron 25 problemas debido a la entrega fuera del limite de tiempo.

CONDICIONES:

	EXTEMPORÁNEOS DE LA FECHA DE ENTREGA, despues del 25 de marzo y 1 segundo:

	-Solo 25 problemas a resolver y están en aleatorio las condiciones de uso, 
		algunos simples otros de recordar, etc. CAPITULO 6 en adelante.

	-Agregar las indicaciones de los criterios de la rùbrica
	
RÚBRICA:

        Todo problema es necesario siga el templete OBLIGATORIO para entregar el 
		problema codificado, usted puede correr sus programas con su estilo 
		pero ya que este funcionando, debe arreglarlo a presentación para su 
		evaluación.

        MODIFICAR LA PORTADA CON MARKDOWN Y ACTUALIZARLA, esta libre de cambiar 
		todo.
        Los archivos deben tener su extensión .CPP (no .txt, etc.)

	Los problemas están en la relación siguiente:
	
	- 100% Sigue el templete proporcionado por el docente y corren 10 
		Problemas (o si incremento en programas por supuesta dificultad) 
		completamente en GITHUB Classroom (no repositorio personal),  los 
		archivos deben tener su extensión .CPP (no .txt, .EXE, etc.) acomodados 
		en dentro de un directorio  (sin acentos o simbolos) SOLO FUENTES, y 
		modifica el README.md que sea una portada.
	- 80% Sigue el templete proporcionado por el docente y corre 8 Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal), los archivos deben 
		tener su extensión .CPP (no .txt, etc.) acomodados en dentro de un 
		directorio (sin acentos o simbolos) SOLO FUENTES, y modifica el 
		README.md que sea una portada.
	- 70% Sigue el templete proporcionado por el docente y corre 7 Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal), los archivos deben 
		tener su extensión .CPP (no .txt, etc.) acomodados en dentro de un 
		directorio (sin acentos o simbolos) SOLO FUENTES, y modifica el 
		README.md que sea una portada.
	- 50 % EVITA Y NO USA el templete proporcionado por el docente sus Problemas 
		(o si incremento en programas por supuesta dificultad) completamente 
		en GITHUB Classroom (no repositorio personal) con mas de 7 problemas 
		resueltos, los archivos NO tener su extensión .CPP y  puede o no estar 
		acomodados en dentro de un directorio (sin acentos o simbolos) 
		SOLO FUENTES, y modifica el README.md que sea una portada.

ENTREGA:

	URL del GitHub Classroom, y recuerde arreglar la PORTADA, quitar todos los 
		elementos extras del templete, acomodarlo bien para su presentación 
		solo lo necesario.

	</p>

</pre>
