# ***Pong Game***
## Realizado por Martín van Puffelen López
### Práctica 1 CIU: *Introducción a Processing y p5.js*
___

#### Introducción
##### En esta primera práctica, se ha implementado el clásico **Pong**, juego basado en el tenis de mesa donde dos jugadores deben hacer que la bola atraviese el límite del otro jugador. Este juego data de 1972 y fue lanzado para la consola Atari. Ver más en [Wikipedia](https://es.wikipedia.org/wiki/Pong).

#### Reglas del juego
##### Una vez la referencia está clara, se pueden mostrar los detalles de esta implementación, en este caso, el jugador que alcance una puntuación de 7 puntos habrá ganado. En el inicio de la partida, la dirección de la pelota será aleatoria, pero tras cada choque con alguno de los jugadores, la pelota aumentará de velocidad. 

#### Recorrido interfaz
##### Al iniciar el juego, se encuentra la indicación de la tecla necesaria para jugar (*ESPACIO*) y un botón que al clicar (*?*) se muestra una sencilla ventana con las reglas básicas del juego y los controles. Cuando se inicia la partida, se aprecia únicamente la puntuación y como añadido la velocidad actual de la pelota. Cuando la partida finaliza se muestra un mensaje y se posibilita al usuario el poder jugar de nuevo.

![Imagen Menú](https://github.com/martinvplopez/Pong-CIU/blob/main/menu.jpg)
####
![Imagen Ayuda](https://github.com/martinvplopez/Pong-CIU/blob/main/help.jpg)
####
![Imagen Partida](https://github.com/martinvplopez/Pong-CIU/blob/main/game.jpg)

#### Detalles implementación
##### Pese a ser un juego con reglas sencillas, existen una serie de implicaciones que son interesantes a tener en cuenta:
- ##### **Rebotes**: en la implementación la pelota no rebota con el ángulo correcto según la zona golpeada por el jugador.
- ##### **Velocidad** de la pelota: se muestra la velocidad de la pelota para dar fuerza a que el punto diferencial es la incrementalidad de dicha variable.
- ##### **Sencillez**: al ser un juego con pocas reglas hay pocos elementos en la interfaz, únicamente ciertas herramientas de control (R para volver a jugar, ESC para el menú, etc) y de información (apartado de ayuda).
- ##### **Color**: se ha elegido el color cartujo o [Chartreuse](https://es.wikipedia.org/wiki/Chartreuse_(licor)) como color principal (pelota y título) dada su representación de crecimiento, vitalidad e intensidad, que son sensaciones muy lejanas al blanco del original y concuerda perfectamente con el propósito.
- ##### **Controles**: Se han elegido las teclas *W* y *S* para el jugador izquierdo e *I* y *K* para el derecho ya que ambas son utilizadas en diversos videojuegos y su disposición en el teclado es muy natural. Nuevamente, *ESPACIO* para iniciar el juego o *ESCAPE* para salir al menú son estándares en videojuegos de escritorio. 

#### Referencias
- [Documentación asignatura](https://github.com/otsedom/otsedom.github.io/blob/main/CIU/P1/README.md)
- [PongGame](https://www.ponggame.org/)
- [Documentación Processing](https://processing.org/reference)

