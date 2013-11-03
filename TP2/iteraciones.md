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
Fase			Número		Casos de uso											Horas
---------------	---------	----------------------------------------------------	------------
Elaboración		Primera		Mostrando datos y notificaciones del					84h
							entrenamiento actual.

							Obteniendo posición propia y de amigos					72h
							en el dispositivo empleado.

							Tomando datos de estado físico del						84h	
							corredor.

							Enviando datos a procesar a la nube						52h
							local.

							Compartiendo datos en tiempo real de un					56h	
							entrenamiento.

							Logueando al usuario en el dispositivo.					112h
				
Elaboración		Segunda		Levantando comentarios motivacionales de				60h
							redes sociales.

							Mostrando datos pedidos mediante voz.					80h

							Recibiendo notificación de necesidad de descanso.		40h

							Mostrando publicidad contextual.						120h

Construcción	Tercera		Usando aplicación con refuerzo para discapacidad.		120h

							Iniciando un entrenamiento.								60h

							Recibiendo notificación de descanso.					80h

							Utilizando la API de datos físicos almacenados.			60h

Construcción	Cuarta		Enviando instrucciones al corredor.						120h

							Registrando al usuario con el dispositivo.				80h

							Consumiendo comentario motivacional.					60h

							Corriendo carrera virtual.								40h

							Añadiendo publicidad al sistema.						120h

Construcción	Quinta		Enviando instrucciones al corredor.						80h

							Consumiendo instrucciones del entrenador.				80h

							Mostrando publicidad en carrera.						120h

							Iniciando un entrenamiento.								60h
------------------------------------------------------------------------------------------------

Con lo cual tenemos un total de 480 horas, que considerando la conformación de equipo
dada anteriormente, corresponde a la cantidad de horas hombre disponibles.

## Detalle de tareas para la primera iteración

### Casos de uso y tareas

A continuación incluimos las tareas a realizar con sus dependencias, para la primer iteración
(correspondiente a la primera fase de elaboración presentada anteriormente).

--------------------------------------------------------------------------------------------------------------------
Caso de uso						Tarea																	Horas
----------------------------	------------------------------------------------------------------		------------
Logueando al usuario en el		Investigar la arquitectura de login en Open Social.						8h	
dispositivo
								Validar con los _stakeholders_ que redes								4h
								sociales se desea soportar.

								Validar con los _stakeholders_ que tipo de sistemas						4h
								de entrada deben soportar los dispositivos.

								Implementar capa de abstracción para interactuar con					16h
								los dispositivos a soportar y determinar sus 
								características.

								Implementar sistema de _login_ para cada dispositivo					16h
								a soportar.

								Diseñar e implementar mecanismos de logueo externos						28h	
								para soportar dispositivos sin interfaz de entrada.

								Implementar capa de interacción con redes								16h	
								sociales a soportar para permitir el registro.

								Diseñar módulos de interfaz con el dispositivo.							8h

								Documentar las interfaces esperadas de los dispositivos.				4h

								Testeo y _debugging_ de las implementaciones particulares				4h
								y de la interfaz general

								Separar los tipos de usuarios entre corredores,							4h
								entrenadores y comentadores.

Mostrando datos y				Validar con los _stakeholders_ que tipos de sistemas					4h
notificaciones					de aviso de información han de soportar los dispositivos.

								Implementar una capa de detección y abstracción de						30h
								características de notificación al usuario para los 
								dispositivos.

								Determinar que tipo de datos notificar al usuario sin que				4h
								este los demande.

								Implementar una interfaz para soportar distintos tipos					8h
								de datos a notificar.

								Implementar para cada dispositivo la metodología de						30h
								envio de notificaciones que se ajuste a sus capacidades
								técnicas.

								Documentar las interfaces esperadas de los dispositivos.				4h

								Testeo y _debugging_ de las implementaciones particulares				4h
								y de la interfaz general.
										
Compartiendo datos en tiempo	Investigar como compartir datos bajo Open Social						8h	
real de un entrenamiento
								Implementar capa de _social sharing_ de datos.							16h	

								Implementar sistema de _social sharing_ para cada red social			16h
								a dar soporte en esta instancia.

								Integrar sistema de _login_ a este módulo.								8h

								Validar políticas de privacidad de datos con _stakeholders_				4h

								Testeo y _debugging_ del módulo.										4h

Obteniendo posición propia y	Validar con los _stakeholders_ que tipo de geolocalización se			4h
de amigos en el dispositivo		se desea soportar. 
empleado.						
								Implementación de módulo de abstracción de posibilidades de				8h
								geolocalización para cada dispositivo.

								Implementación de obtención de datos de geolocalización.				24h

								Implementación de sistema de notificación de geolocalización.			24h

								Integración con el módulo de _social sharing_.							8h	

								Testeo y _debugging_ del módulo.										4h

Tomando datos de estado físico	Validar que tipos de dispositivos médicos se van a soportar.			4h
del corredor.					
								Validar que tipos de datos médicos se van a obtener.					4h

								Implementar el módulo de detección de capacidades de medición			32h
								para datos biomédicos

								Implementar módulo de medición para los dispositivos médicos.			32h

								Documentación de las interfaces esperadas.								4h

								Testeo y _debugging_ de la implementación.								8h

Enviando datos a procesar a la	Investigar la plataforma Open Stack.									4h
nube local.						
								Conseguir especificación técnica del hardware de la nube local.			4h

								Implementar adaptador para llegada de datos a la nube de				8h
								Secretaría.

								Conseguir especificación técnica del software de procesamiento			16h
								de datos de la Secretaría.

								Implementar módulo de envío de datos a la Secretaría.					8h

								Documentar la interfaz con el sistema.									8h

								Testeo y _debugging_ de la implementación.								4h
	
--------------------------------------------------------------------------------------------------------------------

En total tenemos entonces 460 horas, lo que nos da un poco de __slack__ en la iteración considerando la posibilidad
de que surga un evento inesperado o nuestras estimaciones sean incorrectas.
