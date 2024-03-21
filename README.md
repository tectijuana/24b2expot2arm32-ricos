![image](https://github.com/tectijuana/24b2expot2arm32-ricos/assets/158106662/9d38b152-a29e-4a16-adb1-f66c9cd11bd6)

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
Manipulación de memoria y arrays

Estudiantes:
América Elizabeth Zavaleta Ramirez
Ivan Jair Vizcarra Gomez 
Jose Ricardo Pasillas Hernández
Abraham Ezequiel Garcia Campos
Jorge Alexis Lua Velasco



		
	</p>

</pre>

![image](https://github.com/tectijuana/24b2expot2arm32-ricos/assets/158227726/e9d139ed-e499-45ef-80a2-ce92c2f8fefd)
## Direcciones de memoria 
			
	En programación, cada variable o dato almacenado en la memoria de una computadora tiene una 
	dirección única. Estas direcciones son identificadores que indican la ubicación física en la 
	memoria de un valor específico. Las direcciones de memoria se suelen representar en hexadecimal 
	y son utilizadas para acceder y manipular los datos almacenados.

*Acceso a la memoria*

	El acceso a memoria se refiere al proceso de leer o escribir datos en una ubicación específica 
	de la memoria. Esto se puede hacer utilizando las direcciones de memoria correspondientes a las 
	variables o datos que se desean acceder. Dependiendo del lenguaje de programación y del nivel 
	de abstracción, este acceso puede ser directo o indirecto.

*Gestión dinámica de memoria*

	La gestión dinámica de memoria es un aspecto importante en la manipulación de arrays, especialmente cuando 
	el tamaño del array no se conoce en tiempo de compilación. En lenguajes como C y C++, se utiliza la función malloc() 
	para asignar memoria dinámicamente para un array. Posteriormente, se puede liberar esta memoria 
	utilizando la función free() cuando ya no sea necesaria.

*Optimización de acceso a memoria*

	En aplicaciones que requieren un alto rendimiento, como la programación de sistemas embebidos o la computación de 
	alto rendimiento, optimizar el acceso a memoria puede ser crucial. Esto implica organizar los datos 
	en la memoria de manera que se maximice el rendimiento de la caché y se minimice la latencia de acceso a memoria.
	
## Uso de punteros

	Un puntero es una variable que almacena la dirección de memoria de otra variable. En muchos 
	lenguajes de programación, los punteros se utilizan para acceder y manipular datos de manera 
	indirecta, es decir, en lugar de manipular los valores directamente, se manipulan las direcciones 
	de memoria que apuntan a esos valores. Los punteros son especialmente útiles para la gestión 
	dinámica de memoria y para optimizar el rendimiento de ciertas operaciones.
	
 	El uso de punteros en arrays es una técnica común en lenguajes como C y C++ que permite trabajar 
	con arrays de manera más flexible y eficiente, se puede usar de las siguientes distintas maneras:
 
	-> Declaración de arrays usando punteros: En C y C++, el nombre de un array actúa como un puntero 
	al primer elemento del array.
	-> Acceso a elementos de arrays mediante punteros: Una vez que tienes un puntero que apunta al 
	primer elemento de un array, puedes acceder a los elementos restantes del array utilizando 
	aritmética de punteros.
	-> Iteración sobre arrays con punteros: Los punteros pueden ser utilizados para iterar sobre 
	los elementos de un array de manera más eficiente que utilizando índices.

*Punteros y arrays multidimensionales*
	
	En lenguajes como C y C++, los punteros pueden ser utilizados para manejar arrays multidimensionales.
	Por ejemplo, un array bidimensional puede ser interpretado como un array de arrays. 
	La manipulación de estos arrays puede realizarse mediante punteros y aritmética de punteros
	para acceder a los elementos individuales de forma eficiente.

	
## Definición y manipulación de arrays
		
	Un array es una estructura de datos que permite almacenar una colección de elementos del mismo 
	tipo. Los arrays se definen especificando el tipo de datos de los elementos que contendrá y el 
	tamaño del array. La manipulación de arrays incluye operaciones como la asignación de valores a 
	elementos individuales, la lectura de valores de elementos individuales, la iteración sobre todos 
	los elementos del array, entre otras. Los arrays son una herramienta fundamental en la programación 
	para almacenar y manipular colecciones de datos de manera eficiente.

*Manipulación de strings como arrays de caracteres*

	En muchos lenguajes de programación, los strings se representan como arrays de caracteres. Esto implica que las 
	operaciones de manipulación de strings, como la concatenación, la búsqueda de subcadenas y 
	la inversión, pueden realizarse mediante manipulación de arrays de caracteres y punteros.

*Uso de bibliotecas para manipulación de arrays*

	En algunos lenguajes de programación, se pueden utilizar bibliotecas específicas para facilitar la manipulación de arrays. 
	Por ejemplo, en Python, la biblioteca NumPy proporciona estructuras de datos eficientes para trabajar con arrays 
	multidimensionales y realiza operaciones matemáticas avanzadas en ellos.

*Técnicas de programación funcional con arrays*

	En paradigmas de programación funcional, como en el lenguaje Haskell, se utilizan técnicas para manipular arrays 
	de manera funcional, evitando el uso de variables mutables. Esto incluye el uso de funciones de orden superior 
	como map, filter y reduce para operar sobre los elementos de un array de manera declarativa y sin efectos secundarios.

</p>
		

