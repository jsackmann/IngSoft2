% Presentación de producto
% Ingeniería de Software II - Grupo 8
% \today

# Presentación del producto
## Objetivo 

* Corre por Tu Vida es más que una aplicación.
* Es una nueva manera de pensar el deporte.
* Lo que queremos:
	* Acercar el atletismo a la población...
	* Usando tecnología de punta...
	* Aprovechando las nuevas tendencias en _social media_ y _mobile_ ...
	* para brindar una experiencia sin precedentes.
* Ok, no nos vamos a ganar a los VC de Silicon Valley.
* Y-Combinator no nos quiere ni ver.
* Pero si aprobamos nos vamos felices :D !

## Funcionalidades alcanzadas

* Listado de planes
* Selección de entrenamientos por plan
* Fases con rango de velocidades y duración
* Seguimiento de entrenamiento
* Estadísticas _real-time_
	* Velocidad promedio.
	* Velocidad esperada.
	* Tiempo corriendo.
* Mapa _real time_ actualizado de recorrido.
* Notificaciones.

## En imágenes

![Pantalla de Fases](pantalla_seguimiento.png)
![Seguimiento de aplicación](pantalla_seguimiento_ensecu.png)

# ¡DEMO!

# Diseño

## El diseño

* Orientado a objetos
* Módulos varios
	* Sistema extensible para actualizaciones de estado.
	* Estadísticas generales y particulares a entrenamiento.
	* Soporte para planificadores _pluggeables_.
	* Posibilidad de nuevos soportes de batería.
* Pensado para extensibilidad, construido para practicidad.

## Diagramas de clases y secuencia

* Por su tamaño, veamoslo en <https://cacoo.com/diagrams/3Bk8unCXdWQ8DFU0#>

# Retrospectiva

## Retrospectiva sobre SCRUM

* Revisión del Backlog y el Sprint Backlog.
* Lo bueno:
	* Stories resultaron adecuadas a la funcionalidad final.
	* Logramos generar valor al _stakeholder_ en la forma de una demo.
	* Detallamos bien las _stories_ que debían dar valor al _stakeholder_.
* Lo malo
	* Confusión en que tareas había que hacer.
	* Falta de tareas y _stories_ del lado del desarrollador.
	* Asignación por demás de horas.
	* Predicción incorrecta de _story points_ y duraciones.
	* Separación demasiado fuerte entre tareas de programación y diseño.

## Retrospectiva sobre el Diseño

* Lo bueno:
	* Partes que terminaron en el código resultaron estables desde el inicio.
	* Buena extensibilidad para estadísticas y pantallas.
	* Reflejamos bien nuestro conocimiento del dominio y dejamos espacio para expansión.
	* Con mayor conocimiento de dominio hay buen espacio para mejora.
 * Lo malo:
	* Asignación de responsabilidades a los objetos resultó difícil.
	* Falta de conocimiento de dominio para hacer diseño de planes.
	* Complicado separar entre _MVC_ de la plataforma y diseño de objetos de negocio.
	* Tendencia hacia _Big Design Up Front_, poco ágil.

# Muchas gracias!
