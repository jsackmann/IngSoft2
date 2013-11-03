# Iteraciones del proyecto

## Definición de los casos de uso por fase

Los módulos que se deberían desarrollar en la fase de elaboración son 
aquellos que eliminan o disminuyen los mayores riesgos del proyecto
junto con los que definen la arquitectura base del proyecto. Se decidió
que en primer fase de elaboración se desarrollaran los módulos  de:

* __Notificaciones y alertas__: Al tener que dar soporte no solo a distintos
tipos de anteojos de realidad aumentada, sino también a otros dispositivos que
nos son ahora desconocidos, creemos que este es uno de, sino el más, riesgoso
de los módulos a implementar. El ser uno de los puntos fuertes de interacción
con el sistema, y por lo tanto uno de los probables puntos de mayor _carga_ para
el mismo, también es un riesgo que consideramos para tomar la decisión de elegir
este módulo.
* __Estado físico del corredor__: Consideramos que los módulos relacionados
con la obtención y procesamiento de los datos médicos del corredor tienen
algunos de los mayores riesgos asociados, debido a la heterogeneidad de datos
que se podrían obtener y el desconocimiento de las características de
procesamiento de la nube OpenStack de la secretaría.
* __Integración con redes sociales__: El riesgo de la heterogeneidad de
dispositivos, que también contribuye al problema de las notificaciones, y
la falta de indicación de que redes sociales son las que se desea soportar
nos llevan a considerar este módulo como riesgoso y por lo tanto a ponerlo
en la primera iteración de elaboración. También hemos de considerar la falta
de conocimiento por parte de los miembros del equipo del sistema Open Social.
 
Por lo tanto decidimos el siguiente plan de proyecto, indicado con los casos
de uso que se implementarán en cada uno, y luego incluiremos el detalle de la primera
iteración.

------------------------------------------------------------------------------------------------
Fase			Numero		Casos de uso											Horas
---------------	--------	---------------------------------------------------		-----------
Elaboración		Primera		* Mostrando datos y notificaciones del	
							entrenamiento actual.
							* Obteniendo posición propia y de amigos
							en el dispositivo empleado.
							* Tomando datos de estado físico del
							corredor.
							* Enviando datos a procesar a la nube 
							local.
							* Compartiendo datos de tiempo real de un
							entrenamiento.
							* Logueando al usuario en el dispositivo.
				
Elaboración		Segunda		* Levantando comentarios motivacionales de
							redes sociales.
							* Mostrando datos pedidos mediante voz.
							* Recibiendo notificación de necesidad de descanso.
							* Mostrando publicidad contextual

Construcción	Tercera		* Usando aplicación con refuerzo para discapacidad.
							* Iniciando un entrenamiento.
							* Recibiendo notificación de descanso.
							* Utilizando la API de datos físicos almacenados.

Construcción	Cuarta		* Enviando instrucciones al corredor.
							* Registrando al usuario con el dispositivo.
							* Consumiendo comentario motivacional.
							* Corriendo carrera virtual.
							* Añadiendo publicidad al sistema.

Construcción	Quinta		* Enviando instrucciones al corredor.
							* Leyendo instrucciones del corredor.
							* Mostrando publicidad en carrera.
							* Iniciando un entrenamiento.
------------------------------------------------------------------------------------------------

Con lo cual tenemos un total de 320 horas, que considerando la conformación de equipo
dada anteriormente, corresponde a la cantidad de horas hombre disponibles.

## Detalle de tareas para la primera iteración

### Casos de uso y tareas

A continuación incluimos las tareas a realizar con sus dependencias, para la primer iteración
(correspondiente a la primera fase de elaboración presentada anteriormente).

-----------------------------------------------------------------------------------------------------------------
Caso de uso								Tarea														Horas
--------------------------------------	-------------------------------------------------------		------------
Logueando al usuario en el				* Separar los tipos de usuarios.
dispositivo								* Validar con los _stakeholders_ que redes
										sociales se desea soportar.
										* Validar con los _stakeholders_ que tipo de sistemas
										de entrada deben soportar los dispositivos.
										* Implementar capa de abstracción para interactuar con 
										los dispositivos a soportar y determinar sus 
										características.
										* Diseñar e implementar mecanismos de logueo externos  
										para soportar dispositivos sin interfaz de entrada.
										* Implementar capa de interacción con redes
										sociales a soportar para permitir el registro.
										* Diseñar módulos de interfaz con el dispositivo.
										* Testeo y _debugging_ de las implementaciones particulares
										y de la interfaz general.

Mostrando datos y						* Validar con los _stakeholders_ que tipos de sistemas
notificaciones							de aviso de información han de soportar los dispositivos.
										* Implementar una capa de detección y abstracción de 
										características de notificación al usuario para los 
										dispositivos.
										* Determinar que tipo de datos notificar al usuario sin que
										este los demande.
										* Implementar una interfaz para soportar distintos tipos
										de datos a notificar.
										* Implementar para cada dispositivo la metodología de
										envio de notificaciones que se ajuste a sus capacidades
										técnicas.
										* Testeo y _debugging_ de las implementaciones particulares
										y de la interfaz general.
										
Compartiendo datos de tiempo			* Implementar capa de _social sharing_ de datos.
real de un entrenamiento				* Implementar sistema de _social sharing_ para cada red social	
										a dar soporte en esta instancia.
										* Integrar sistema de _login_ a este módulo.
										* Validar políticas de privacidad de datos con _stakeholders_

Obteniendo posición propia y			* Validar con los _stakeholders_ que tipo de geolocalización se
de amigos en el dispositivo				se desea soportar. 
empleado.								* Implementación de módulo de abstracción de posibilidades de
										geolocalización para cada dispositivo.
										* Implementación de geolocalización 
										* Implementación de sistema de notificación de geolocalización
										* Integración con el módulo de _social sharing_

Tomando datos de estado físico 
del corredor.

Enviando datos a procesar a la 
nube local.
	
-----------------------------------------------------------------------------------------------------------------

### Diagrama GANTT de la iteración
