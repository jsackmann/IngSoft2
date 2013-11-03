# Introducción

El presente informe constituye la planificación de **Corré por tu Vida** (CV), que dada la popularidad
de su previa iteración ha visto su potencial aumentado de manera importante. El nuevo tamaño del
proyecto motiva entonces el uso de la metodología RUP (_Rational Unified Process_).

## Caso de negocio

El caso de negocio se modificó respecto al trabajo anterior principalmente en la escala de dispositivos
y usos para el mismo. La aplicación debe integrar una gran variedad de dispositivos y deberá proveer los datos a redes sociales, a
consumidores externos de datos físicos, etc. Consideramos que esto es lo que motiva el importante cambio de escala del mismo.

A continuación incluimos los _drivers_ del proyecto, las restricciones y los grados de libertad del mismo.

### Drivers del proyecto

Consideramos que se deben lograr los siguientes objetivos:

* La aplicación debe funcionar con anteojos de realidad aumentada, considerando
que los mismos pueden ser fabricados por una amplia variedad de vendedores. También
debe incluir dispositivos menos novedosos como mp3, relojes de pulsera, etc. ajustando
la funcionalidad a lo que corresponda.
* Los datos de los entrenamientos deben estar disponibles para ser compartidos
en redes sociales, y que se pueda interactuar con los corredores enviandoles
mensajes mediante estas redes. También debe incluirse esta noción de "amigos" en
la aplicación mediante el uso de posiciones en un mapa. 
* Se mostrarán, durante una carrera, todo tipo de datos relacionados con la misma,
_on demand_ mediante voz o indicaciones al dispositivo.
* Se expanden las posibilidades de entrenamiento clásico con nuevas "competencias
virtuales" contra los registros de otros corredores en la zona actual.
* Los corredores profesionales deben poder recibir actualizaciones de sus entrenadores
durante los entrenamientos, dandoles prioridad a estos avisos.
* La información de los corredores debe ser recolectada en tiempo real para que
la Secretaría de Deportes pueda procesar los datos físicos en tiempo real.
* Esta información también debe ser disponible mediante una API (_Application
Programming Interface_) para consumidores de los datos de la aplicación.

### Restricciones

El proyecto tiene las siguientes restricciones

* Se deben utilizar estándares abiertos para minimizar la dependencia tecnológica. En
particular debe seguirse el estándar OpenSocial en la medida de lo posible.
* La aplicación debe adaptarse a las normativas de accesibilidad para personas con
discapacidades, con lo que las maneras de mostrar información y generar notificaciones
debe ser adecuadas a estas necesidades.
* Se debe utilizar encriptación para proteger los datos de los corredores que se provean
por la API. Existe un algoritmo de encriptación homomórfica a considerar pero es experimental y 
puede ser necesario ser cambiarlo.
* Los datos enviados a la Secretaría deben ser procesados en una nube OpenStack que es local
a la misma.
* Para tener ganancias a corto plazo es necesario que se pueda mostrar publicidad _targeteada_
a los usuarios de acuerdo al contexto.

### Grados de libertad

* Si bien se indicó que no era posible contratar gente, no esta indicada la composición del grupo
como lo decidimos nosotros. Por lo tanto consideramos una composición de un grupo de 4 personas.
* La duración de las fases de RUP no esta especificada. Por lo tanto asumimos que las mismas son de 15 días y que tomando un día de 8 horas laborales y considerando 4 personas en el grupo eso nos da 480 horas hombre de trabajo para la iteración.
* No se especifica si el _reconocedor de voz_ debe ser desarrollado _in house_ o no, por lo tanto
decidimos que vamos a utilizar un servicio externo (por ejemplo _Google Voice API_). El mismo es
Open Source y por lo tanto no conflictua con ninguna restricción del proyecto.
