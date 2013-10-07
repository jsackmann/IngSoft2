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

2) Como atleta quiero poder ver mi posición en el mapa en tiempo real mientras estoy en un seguimiento 

	* Business Value: 34
	* Story Points: 13
	* Criterio de Aceptación:
		  - El atleta puede ver su posición actualizada a intervalos regulares en la pantalla.
		  - Si se apaga la pantalla o bloquea el teléfono, al reanudar la aplicación la actualización de la posición se reanuda en forma automática.
		  - Si se pierde señal de geolocalización, se notifica al usuario.
		  - El atleta puede ver un _timestamp_ en cada lugar donde se actualizó su posición.
		  - El atleta puede desactivar geolocalización si lo desea.

3) Como atleta quiero que la aplicación me de un plan de entrenamiento en base a los datos ingresados.

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- Si el atleta estableció como objetivo que desea correr una maratón, el sistema creará un plan concentrado en larga duración y velocidad constante.
		- Si el atleta estableció que desea correr una determinada cantidad de kilómetros en un cierto tiempo, el sistema creará un plan con entrenamientos de velocidad progresivamente más difíciles hasta alcanzar el objetivo.
		- Si el atleta no estableció requerimientos ni de distancia ni de tiempo, el programa devolverá una serie de entrenamientos recreativos.
		- Si el atleta se encuentra en buen estado físico, los entrenamientos constarán de fases con mayor exigencia.
		- La duración y velocidad devueltas serán inversamente proporcionales al peso.

4) Como corredor quiero poder inicializar el seguimiento de un entrenamiento de los que me dio la aplicación para poder empezar a  correr bajo el plan obtenido.

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El atleta puede elegir un plan de la lista de disponibles.
		- El atleta puede seleccionar que el plan empiece a correr, y el mismo empezara el seguimiento en la primer fase.
		- El atleta puede detener el entrenamiento en cualquier momento.
		- El seguimiento termina de acuerdo a las fases del plan.
		- El atleta puede elegir un entrenamiento si este esta disponible, es decir si el plazo para el objetivo no ha expirado.

5) Como Secretaría de Deportes de la ciudad de Balvanera y San Cristóbal, quiero tener un documento detallado del diseño de la aplicación

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El diagrama corresponderá al diseño orientado a objetos de la aplicación.
		- Se incluirá un diagrama de clases mostrando la taxonomía de los objetos a implementar.
		- Se incluirá un diagrama de secuencia para mostrar pasos algorítmicos de interés.
		- El mismo utilizará la sintaxis de la materia Ingeniería del Software II de la carrera de Ciencias de la Computación de la UBA.
		- Se incluirá un informe detallado de las decisiones de diseño tomadas.

6) Como atleta quiero poder ver estadísticas de los entrenamientos que ya hice

	* Business Value: 21
	* Story Points: 13
	* Criterio de Aceptación:
		- El atleta puede entrar a "Mis estadísticas" desde el menú principal.
		- En "Mis estadísticas" tendrá una lista de los entrenamientos que ya realizó.
		- Al elegir uno de estos entrenamientos de la lista se mostrará el detalle en otra pantalla. 
		- El atleta puede ver cuánta distancia recorrió para el entrenamiento elegido, cuanto tardo en cada uno, y cual fue su velocidad máxima.
		- El atleta puede ver el recorrido que hizo en el entrenamiento en un mapa.

7) Como Secretaría de Deportes de la ciudad de Balvanera y San Cristóbal, quiero tener una demo de funcionalidad básica del producto presentada por los desarrolladores.

	* Business Value: 21
	* Story Points: 8
	* Criterio de Aceptación:
		- La demo debe permitir realizar el seguimiento de un entrenamiento, indicando para una fase si se debe aumentar o disminuir la velocidad. 
		- La demo debe incluir una presentación de funcionalidad y un informe de funcionalidades
		- La demo debe mostrar el recorrido en un mapa.
		- La demo debe correr en el entorno movil de iOS.

8) Como atleta quiero que la aplicación siga en que fase del entrenamiento me encuentro y me avise si esta cambia 

	* Business Value: 21
	* Story Points: 8
	* Criterio de Aceptación:
		- En un seguimiento, se lleva cuenta de cual es la fase actual según la duración.
		- Cuando el tiempo de la fase actual se acaba, el entrenamiento pasa a la siguiente fase o termina si no hay.
		- Los datos de seguimiento se actualizan cuando se actualiza la fase. 
		- La aplicación genera una notificación auditiva cuando se termine el tiempo de la fase actual y se pase a otra.
		- La aplicación genera una notificación cuando se terminó la última fase del entrenamiento.
		- No se genera esa notificación particular por otro motivo.

9) Como atleta quiero poder ingresar el objetivo de mi entrenamiento.

	* Business Value: 13
	* Story Points: 8
	* Criterio de Aceptación:
		- El atleta al ingresar a "Crear plan" tendrá la opción "objetivo"
		- El atleta recibirá una lista de objetivos posibles.
		- El atleta debe ingresar sus objetivos propuestos entre las opciones:
		- - Correr 5 km sin tiempo.
		- - Terminar un maratón olímpico.
		- - Correr 7 km en 35 minutos.
		y otras opciones y posibilidades decididas durante la implementación
		- Los objetivos corresponderán a una distancia a recorrer, y potencialmente un tiempo en el que se debe correr esta distancia.

10) Como corredor quiero tener estadisticas generales de mi performance como atleta 

	* Business Value: 13
	* Story Points: 8
	* Criterio de Aceptación:
		- El atleta podrá entrar a "Mis estadísticas" dentro del menu principal.
		- El atleta podrá entrar a "Estadísticas generales" dentro de la vista de estadísticas.
		- Las estadísticas generales se calcularán en base a todos los entrenamientos del usuario.
		- Estas estadísticas estarán presentadas cuando el atleta presione "Estadísticas generales" en una nueva vista.
		- Cada estadística sera presentada con una descripción del valor obtenido.
		- Estas estadísticas contendran como mínimo: Kilometros totales recorridos y velocidad máxima histórica.

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

12) Como atleta quiero poder ingresar los datos de mi estado físico.

	* Business Value: 8
	* Story Points: 5
	* Criterio de Aceptación:
		- El atleta podrá ingresar a "Mi perfil" desde el menú principal
		- El atleta podrá ingresar su peso en kilogramos.
		- El atleta podrá ingresar su altura en cm.
		- El atleta podrá especificar mayores detalles usando categorías basadas en si ya corrió una carrera o no, ya corrió un maratón o no, su mejor marca de distancia en una carrera y en un maratón.
		- La aplicación guardará registro del valor actual de ambos datos.

13) Como atleta quiero poder ajustar el consumo de batería

	* Business Value: 8
	* Story Points: 3
	* Criterio de Aceptación:
		- El atleta puede entrar a "Configuración" desde el menu principal.
		- El atleta dispondrá en esta ventana de los distintos tipo de batería disponibles.
		- El atleta puede seleccionar dentro de los niveles disponibles, como mínimo bajo, medio y alto.
		- La aplicación debe poder correr más tiempo bajo un plan de consumo bajo que en uno alto.
		- El atleta puede determinar que impacto tiene en las funcionalidades de la aplicación el cambio de consumo de batería.

14) Como atleta quiero poder ingresar el plazo estipulado para mi entrenamiento si así lo deseo.

	* Business Value: 5
	* Story Points: 2
	* Criterio de Aceptación:
		- El atleta puede estipular "Plazo" dentro de la selección de "Crear Plan"
		- El atleta puede elegir un plazo estipulado para la finalización de cada uno de sus objetivos.
		- Los planes consistirán de una fecha límite en la que se quiere lograr el objetivo.

15) Como atleta quiero poder ingresar mi frecuencia semanal con la que puedo entrenar.

	* Business Value: 5
	* Story Points: 1
	* Criterio de Aceptación:
		- El atleta podrá ingresar "Frecuencia semanal" dentro de sus datos de "Mi Perfil"
		- El atleta debe ingresar la frecuencia semanal con la que puede entrenar.
		- Los valores ingresados deben ser una cantidad de días entre 1 y 7.
		- La aplicación guardará registro del valor.

16) Como atleta quiero que las actualizaciones de posición sean acordes al nivel de batería seleccionado.

	* Business Value: 5
	* Story Points: 8
	* Criterio de Aceptación:
		- La posición se actualiza cada 10 segundos si el nivel de consumo batería elegido es alto.
		- La posición se actualiza cada minuto si el nivel de consumo de batería es bajo.
		- Para los demás niveles de batería también se indicará una frecuencia de actualización de posición al momento de la implementación.

17) Como atleta quiero que las notificaciones de velocidad de la aplicación sean acordes al de batería seleccionado.

	* Business Value: 5
	* Story Points: 8
	* Criterio de Aceptación:
		- Si el atleta eligió un consumo bajo, las notificaciones son pitidos y ocurren cada 1 minuto.
		- Si el atleta eligió un consumo alto de batería, las notificaciones son temas musicales preelegidos por la app y ocurren cada 10 segundos.
		- Para otros niveles de batería se determinará también una frecuencia de notificaciones y calidad de las mismas en el momento de la implementación.	

18) Como atleta quiero poder publicar los recorridos de los entrenamientos en redes sociales y aplicaciones de geolocalización.

	* Business Value: 1
	* Story Points: 10
	* Criterio de Aceptación:
		  - El atleta puede seleccionar en qué red social o aplicación publicar.
		  - El atleta puede seleccionar qué recorrido puede publicar.
		  - El atleta puede escribir un mensaje a agregar además de los datos de su entrenamiento.
		  - La publicación es visible por los demás miembros de la red social de acuerdo a las reglas de privacidad de la misma.
		  - Solo los datos explícitamente indicados por el usuario son publicados en la red social correspondiente.
		  - El atleta puede decidir si quiere que se muestre el recorrido que realizó, la velocidad con la que corrió, etc., para cada tipo de dato a compartir.
