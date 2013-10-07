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
