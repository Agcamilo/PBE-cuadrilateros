as yet unclassified
crearBotones: a
|reintentar|

   tablero:= Tablero new initialize:tamInter.
	interfaz addMorph: tablero.
	tablero position: 50@50.
	


tirar:= SimpleButtonMorph new.
interfaz addMorph: tirar.
(tamInter<10)ifTrue:[tamInter:=8]. "en el caso del tablero 5x5".
tirar position: (tamInter*40)@100.
tirar color: (Color r:0.858 g:0.862 b:0.839). "RGB: 219, 220, 214"
tirar  target:[  
	(estadojuego = 1) ifTrue: [  
	self tirardados. estadojuego := 2]].
tirar label:'Tirar Dado'.
tirar actionSelector: #value.
	
numerodado1 := StringMorph new.
numerodado1 contents: 'result'.
numerodado1 position: ((tamInter*40)+20)@85.
interfaz addMorph: numerodado1.

numerodado2 := StringMorph new.
numerodado2 contents: 'result'.
numerodado2 position: ((tamInter*40)+20)@120.
interfaz addMorph: numerodado2.

puntaje1 := StringMorph new.
puntaje1 color: Color red.
puntaje1 contents: 'J1'.
puntaje1 position: ((tamInter*40)+90)@150.
interfaz addMorph: puntaje1.

puntaje2 := StringMorph new.
puntaje2 color: Color orange.
puntaje2 contents: 'J2'.
puntaje2 position: ((tamInter*40)+5)@150.
interfaz addMorph: puntaje2.

reintentar := SimpleButtonMorph new.
interfaz addMorph: reintentar.
reintentar position: (tamInter*40)@300.
reintentar color: (Color r:0.858 g:0.862 b:0.839). 
reintentar label:'Reintentar'.
reintentar actionSelector: #value.
reintentar target: [ 
	Transcript show: estadoturno .
	Transcript show: ultimojugador .
	(estadoturno = ultimojugador) ifTrue: [  
	self cambiarestados. 
	estadojuego := 2
	].
	 ].


pasarturno := SimpleButtonMorph new.
interfaz addMorph: pasarturno.
pasarturno  position: (tamInter*40)@200.
pasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
pasarturno  target:[ self cambiarestados 
	"aca se tiene q descontar una vida"
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.