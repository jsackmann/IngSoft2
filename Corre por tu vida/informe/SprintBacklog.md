2) Como atleta quiero poder ver mi posición en el mapa en tiempo real mientras estoy en un seguimiento 

	* Business Value: 34
	* Story Points: 13
	* Criterio de Aceptación:
		  - El atleta puede ver su posición actualizada a intervalos regulares en la pantalla.
		  - Si se apaga la pantalla o bloquea el teléfono, al reanudar la aplicación la actualización de la posición se reanuda en forma automática.
		  - Si se pierde señal de geolocalización, se notifica al usuario.
		  - El atleta puede ver un _timestamp_ en cada lugar donde se actualizó su posición.
		  - El atleta puede desactivar geolocalización si lo desea.

	* Tareas

	--------------------------------------------------------------------------
	Tarea																Tiempo
	------------------------------------------------------------------	------
	Diseñar las pantallas y vistas de la aplicación							1h

	Instalar y preparar el entorno de desarrollo							2h

	Armar proyecto git													 30min

	Investigar el lenguaje Objective-C y la plataforma iOS					2h

	Investigar como obtener el tiempo actual del celular					1h

	Implementar la lógica para obtener la posición actual del teléfono	    1h

	Agregar una vista con un mapa en la pantalla							1h

	Implementar lógica para centrar ese mapa en una posición indicada		1h

	Investigar qué pasa cuando se pasa la aplicación al background y		2h
	cuando vuelve, implementar la lógica que mantenga actualizando 
	la aplicación incluso en background.

	Testear que el mapa se centre correctamente.						 30min

	Testear que efectivamente la posición se actualice al desplazar el   30min
	teléfono.

	Implementar la lógica para dibujar un recorrido en el mapa dados los    3h
	puntos y un timestamp de los mismos.
	--------------------------------------------------------------------------

1) Como atleta quiero que la aplicación siga mi fase dentro del plan para que me avise si lo estoy siguiendo o tengo que modificar mi marcha. 

	* Business Value: 34
	* Story Points: 8
	* Criterio de Aceptación:
	
		- El atleta debe poder saber que plan y que entrenamiento esta actualmente siguiendo.
		- El atleta debe poder saber en que fase de que entrenamiento esta en este momento.
		- El atleta debe saber a que velocidad esta corriendo actualmente.
		- El atleta debe recibir una notificación de que debe aumentar la marcha si está yendo más lento que la fase.
		- El atleta debe recibir una notificación de que debe disminuir la marcha si está yendo más despacio que la fase.
		- El atleta debe recibir una notificación en intervalos regulares si se está manteniendo en una marcha aceptable.
		- Cada alerta por marcha inválida se repetirá a intervalos regulares mientras persista la condición.
		- En la interfaz gráfica debe aparecer la velocidad a la que el atleta debiera correr para llegar a la distancia implícita requerida (resultado de multiplicar la velocidad media de la fase por la duración de la misma).

	* Tareas

	--------------------------------------------------------------------------
	Tarea																Tiempo
	--------------------------------------------------------------		------
	Implementar la lógica para calcular los datos de velocidad				2h
	promedio

	Investigar un algoritmo para lograr calcular la velocidad				2h
	promedio a medida que llegan los datos.

	Codificar la lógica para obtener la velocidad necesaria para			2h
	llegar a la velocidad requerida.

	Codificar la lógica para que si la velocidad no esta en el rango,		5h
	se envié una alerta correspondiente a cuan "grave" es el nivel de
	alerta.
	
	Investigar como reproducir una canción en cada formato estandar			2h	
	(mp3, wav, etc.)

	Codificar la vista para que muestre la velocidad objetivo, duración		5h
	y distancia recorrida en esta fase

	Crear un mock de un entrenamiento de una fase para poder realizar	 30min
	las pruebas de seguimiento de velocidad y actualización de la vista

	Crear un mock de batería y configurador para testear los tipos de		1h
	notificaciones y la frecuencia de actualización

	Codificar un sistema de administración de actualizaciones para			2h
	proveer los datos de posición a los distintos módulos

	--------------------------------------------------------------------------

5) Como Secretaría de Deportes de la ciudad de Balvanera y San Cristóbal, quiero tener un documento detallado del diseño de la aplicación

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El diagrama corresponderá al diseño orientado a objetos de la aplicación.
		- Se incluirá un diagrama de clases mostrando la taxonomía de los objetos a implementar.
		- Se incluirá un diagrama de secuencia para mostrar pasos algorítmicos de interés.
		- El mismo utilizará la sintaxis de la materia Ingeniería del Software II de la carrera de Ciencias de la Computación de la UBA.
		- Se incluirá un informe detallado de las decisiones de diseño tomadas.

	* Tareas:

	--------------------------------------------------------------------------
	Tarea																Tiempo
	--------------------------------------------------------------		------
	Hacer el diagrama de secuencia del sistema de notificaciones		1h
	en seguimiento

	Realizar el informe dei diseño justificando las decisiones			6h
		
	Determinar cuales son y realizar los diagramas de secuencia			8h
	pertinentes

	Hacer diagrama de clases para el mecanismo de actualización de		8h
	datos en un seguimiento

	Hacer el diagrama de clases de los controladores y su relación con	8h
	los objetos de negocio		

	Hacer el diagrama de clases para el mecanismo de creación de		3h
	batería y su impacto 

	Hacer el diagrama para el mecanismo de craeción de planes básicos	2h

	Hacer diagrama de clases para el mecanismo de estadísticas de		3h
	entrenamientos y sus almacenamientos.
	--------------------------------------------------------------------------

4) Como corredor quiero poder inicializar el seguimiento de un entrenamiento de los que me dio la aplicación para poder empezar a  correr bajo el plan obtenido.

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El atleta puede elegir un plan de la lista de disponibles.
		- El atleta puede seleccionar que el plan empiece a correr, y el mismo empezara el seguimiento en la primer fase.
		- El atleta puede detener el entrenamiento en cualquier momento.
		- El seguimiento termina de acuerdo a las fases del plan.
		- El atleta puede elegir un entrenamiento si este esta disponible, es decir si el plazo para el objetivo no ha expirado.

	* Tareas
	
	--------------------------------------------------------------------------
	Tarea																Tiempo
	--------------------------------------------------------------		------
	Implementar el controlador para que al apretar el boton de				5h
	iniciar el seguimiento, inicie el seguimiento para el 
	entrenamiento indicado con los datos del mismo

	Implementar que se pueda detener un plan de entrenamiento en			3h
	cualquier momento del mismo

	Investigar maneras de ordenar la lista según relevancia de				2h
	entrenamientos

	Crear un mock de un okan ara testear a vsta de entrenamientos			3h
	e indicar para empezar

	Utilizar el mock de entrenamientos en el mock de planes para		 30min
	asociar un plan a entrenamientos de prueba

	Implementar la vista para permitir iniciar un entrenamiento				2h
	y mostrar sus fases y datos, con un botón para iniciar.

	Implementar la vista de planes disponibles para el usuario				1h

	Testear que el seguimiento sea inicializado con los datos del			1h
	entrenamiento seleccionado
	--------------------------------------------------------------------------

5) Como Secretaría de Deportes de la ciudad de Balvanera y San Cristóbal, quiero tener un documento detallado del diseño de la aplicación

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El diagrama corresponderá al diseño orientado a objetos de la aplicación.
		- Se incluirá un diagrama de clases mostrando la taxonomía de los objetos a implementar.
		- Se incluirá un diagrama de secuencia para mostrar pasos algorítmicos de interés.
		- El mismo utilizará la sintaxis de la materia Ingeniería del Software II de la carrera de Ciencias de la Computación de la UBA.
		- Se incluirá un informe detallado de las decisiones de diseño tomadas.
	* Tareas

	----------------------------------------------------------------------------
	Tarea																  Tiempo
	--------------------------------------------------------------		--------
	Conseguir dispositivo de prueba											2h
	
	Preparar la presentación del producto									2h

	Preparar informe de funcionalidades										3h

	Generar y probar el instalable de la demo para el dispositivo		  30min

	Preparar informe de seguimiento de trabajo realizado					2h

	Preparar la charla de presentación									 2h30min

	Preparar la restrospectiva sobre el proyecto							1h
	----------------------------------------------------------------------------

11) Como corredor quiero poder ver la velocidad promedio y la duración de cada fase de un entrenamiento para saber el criterio con el que la aplicación mide mi performance corriendo.

	* Business Value: 13
	* Story Points: 8
	* Criterio de Aceptación:
		- El atleta podrá entrar a los planes que tiene creados.
		- El atleta debe poder ver los entrenamientos que tiene listos dentro de ese plan.
		- El atleta debe poder elegir un entrenamiento de los que la aplicación ha preparado.
		- El atleta debe poder examinar las fases de un entrenamiento.
		- El atleta debe poder elegir una fase para ver el detalle de la misma.
		- El atleta debe ver para la fase elegida un rango de velocidades en km/h que son aceptables.
		- El atleta debe poder ver para la fase elegida cuanto tiempo dura la misma en minutos.

	* Tareas

	--------------------------------------------------------------------------
	Tarea																Tiempo
	--------------------------------------------------------------		------
	Implementar modelos Corredor, Plan, Fase y Entrenamiento				1h

	Mockear datos de los modelos										 30min

	Crear una vista para mostrar los datos de las fases de					2h
	entrenamiento que incluyan la duración y rango de velocidades.

	Investigar como mostrar datos numéricos de velocidad y duración por  30min
	la interfaz del celular.

	Crear una lista que muestre y permita elegir los planes de				1h
	entrenamiento

	Crear una lista para que muestre y permita elegir los entrenamientos	1h
	del usuario

	Crear una lista que muestre las fases de un entrenamiento				1h

	Agregar funcionalidad para que al seleccionar un plan de			 30min
	entrenamiento de la lista, se muestren la lista de los 
	entrenamientos relacionados al plan seleccionado.

	Agregar funcionalidad para que al seleccionar un entrenamiento		 30min
	de la lista se muestren las fases asociadas a ese entrenamiento
	--------------------------------------------------------------------------
