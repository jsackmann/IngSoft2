Atributo de Usabilidad
=======================

El sistema debe poder ser utilizado por personas con capacidades
diferentes de movibilidad, visión o audición de la manera más
satisfactoria posible.

* Fuente: Usuario
* Estímulo: El usuario desea utilizar su dispositivo habiendo
indicado que desea usarlo en modo con refuerzo.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El sistema adecua las notificaciones de acuerdo a las 
limitaciones del usuario.
* Medida de respuesta: El 99% de los usuarios puede entender las
notificaciones recibidas en menos de 10 segundos sin ayuda de una
persona externa.

Atributo de Usabilidad
======================

Queremos que la aplicación sea intuitiva, elegante y fácil de usar, de
manera que el usuario no tenga problemas en encontrar como realizar una
tarea.

* Fuente: Usuario nuevo
* Estímulo: Empieza a utilizar el sistema en una carrera con su dispositivo.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El sistema notifica al usuario las opciones y empieza a recibir
instrucciones del mismo por los diversos medios que permita el dispositivo.
* Medida de respuesta: El 70% de los usuarios, sin ser avisado previamente,
descubre las opciones de uso del sistema y como dar órdenes al mismo.

Atributo de Usabilidad
======================

Las indicaciones dadas por el sistema, visuales auditivas o táctiles, deben
ser fáciles de entender por el usuario, y adaptarse al tipo de dispositivo
que se tiene.

* Fuente: Usuario
* Estímulo: El usuario realiza una acción que requiere una notificación por
parte del Sistema.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El sistema provee la notificación utilizando los medios disponibles
por el dispositivo y priorizando medios más inmediatos sobre otros menos
inmediatos (por ejemplo priorizando visual sobre táctil en la medida de lo posible).
* Medida de respuesta: El 75% de los usuarios entiende en menos de 10 segundos, sin
ayuda de terceros, la notificación presentada cuando la misma ocurre por primera vez.

Atributo de Usabilidad
======================

Las instrucciones y mensajes de los entrenadores a los corredores profesionales 
deben ser lo menos intrusivos posibles.

* Fuente: Entrenador
* Estímulo: Envía un mensaje a un corredor profesional que esta a su cargo.
* Artefacto: Sistema
* Entorno: Condiciones normales.
* Respuesta: El sistema muestra el mensaje del entrenador al usuario. 
* Medida de respuesta: El 75% de los usuarios puede entender la notificación
en menos de 6 segundos, sin ser distraido de la tarea que se encuentra realizando
al momento pero sin ser interrumpido por otras notificaciones de menor prioridad.

Atributo de Usabilidad
======================

Se desea que el usuario pueda utilizar su dispositivo para dar avisos al
sistema mediante el uso de voz, o utilizando medios táctiles.

* Fuente: Usuario
* Estímulo: Desea dar una órden al dispositivo por medio de la voz o 
mediante uso táctil.
* Artefacto: Sistema
* Entorno: Condiciones normales.
* Respuesta: Se procesa la órden del usuario y el sistema utiliza la
información para dar notificaciones o para ejecutar comandos.
* Medida de respuesta: El 90% de las órdenes dadas por voz son interpretadas
correctamente por el Sistema en menos de 3 reintentos. De las órdenes ingresadas, 
el 70% en promedio son órdenes que el sistema puede procesar efectivamente. 

Atributo de Seguridad
=====================

La información de salud sobre los corredores debe ser almacenada de manera que
solo personal autorizado pueda revisarla, y solo se puede acceder a la información
de la API que se haya autorizado previamente a consumir.

* Fuente: Agente no autorizado.
* Estímulo: Intenta acceder a la base de datos de la Secretaría de Deportes.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El atacante no puede acceder a datos privados de los corredores,
los accesos no autorizados son auditados por el sistema.
* Medida de respuesta: El 99.9999% de los ataques son rechazados. Los ataques
con éxito no pueden obtener información privada de los datos utilizando dispositivos
con poder de cómputo actuales en menos de 1000 años.

Atributo de Seguridad
=====================

Solo los entrenadores de un corredor pueden enviarle un mensaje personalizado a su
dispositivo.
//CHE; CAMBIAR.


* Fuente: Agente no autorizado.
* Estímulo: Intenta enviar un mensaje personalizado a un corredor que no lo ha autorizado.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El comentario es descartado por el sistema sin dar aviso al usuario.
* Medida de respueta: La performance de sistema no se degrada, se rechaza el 99.9999% de los
mensajes no autorizados enviados, no se interrumpe al corredor mientras se realiza este
filtrado.

Atributo de Seguridad
=====================

La información de datos físicos que midan los sensores de los dispositivos no debe
poder ser interceptada en su camino a la unidad de procesamiento central.

* Fuente: Agente no autorizado.
* Estímulo: Intenta acceder a los datos enviados desde un dispositivo.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: La información que puede ser accedida por agentes externos en el camino
pero solo los extremos de la comunicación pueden usarla para obtener los datos reales.
* Medida de Respuesta: Un _eavesdropper_ no puede obtener los datos que tomó el dispositivo
en menos de 1000 años utilizando equipos con poder de cómputo como los actualmente disponibles.

Atributo de Performance
=======================
//AGREGAR EL DE DISPONIBILIDAD ANALOGO.

El sistema debe dar respuesta rápida ante situaciones de riesgo médico detectadas mediante
un dispositivo de medición de datos médicos.

* Fuente: Dispositivo médico.
* Estímulo: Se envía una señal que indica un riesgo potencial a la salud del corredor.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: Se le avisa al corredor de la situación, si la situación conlleva riesgo
de vida se pide asistencia médica.
* Medida de respuesta: El aviso de situación y las acciones correctivas se realizan en
menos de 10 segundos de recibida la señal de riesgo potencial del medidor.

Atributo de Auditabilidad
=========================

Se debe mantener registro de usos del dispositivo por parte de los usuarios de manera
de tener un registro de acciones de los mismos.
 
Atributo de Disponibilidad
===========================

El sistema debe estar en funcionamiento todo el tiempo que sea posible.

* Fuente: Usuarios
* Estímulo: Se intenta enviar un pedido al sistema de información.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El sistema responde con la información pertinente al usuario.
* Medida de Respuesta: El sistema responde con una probabilidad que equivale a un
_downtime_ de 30 segundos por día promediado a lo largo de un año.

Atributo de Modificabilidad //WAAAAAAAAAAAAT??????
===========================

Se desea poder agregar nuevos modelos de dispositivos biométricos.

* Fuente: Desarrollador
* Estímulo: Se desea poder recolectar una nueva métrica de carácter médico a partir de un
dispositivo.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: Las medidas del dispositivo pasan a ser recolectadas y enviadas al sistema, y
los demás módulos continuan funcionando.
* Medida de Respuesta: Desarrollar y probar el driver para recolectar esta información se
realiza en menos de dos semanas hombre de trabajo.

Atributo de Modificabilidad
===========================

El sistema debe poder adaptarse a nuevo hardware de manera de poder
cambiar el hardware actual a otro para aumentar el poder de cómputo.

* Fuente: Secretaría de Deportes
* Estímulo: Se agrega nuevo hardware para procesamiento.
* Artefacto: Sistema
* Entorno: En condiciones normales.
* Respuesta: El hardware agregado adicional recibe una proporción de
los pedidos para procesar. Se sigue utilizando el resto del hardware
con la proporción de pedidos modificada.
* Medida de respuesta: El hardware agregado logra entrar en funcionamiento
en menos de una semana de configuración y _deployment_.
 
Atributo de Modificabilidad
===========================

El sistema debe permitir que se adapten todo tipo de dispositivos,
no solo anteojos sino también relojes de pulsera, mp3, etc.

* Fuente: Desarrollador
* Estímulo: Se desea que el sistema soporte el uso de un nuevo
dispositivo.
* Artefacto: Sistema
* Entorno: En tiempo de ejecución.
* Respuesta: Se agrega soporte para el dispositivo, no se modifica
el resto del sistema.
* Medida de respuesta: El cambio se desarrolla, testea y el dispositivo
esta listo para uso con el sistema en menos de dos semanas hombre.
