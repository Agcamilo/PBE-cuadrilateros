as yet unclassified
crearBotones:a


   tablero:= Tablero new initialize:a.
	interfaz addMorph: tablero.
	tablero position: 50@50.
	


tirar:= SimpleButtonMorph new.
interfaz addMorph: tirar.
(tamInter<10)ifTrue:[tamInter:=8]. "en el caso del tablero 5x5".
tirar position: (tamInter*40)@100.
tirar color: (Color r:0.858 g:0.862 b:0.839). "RGB: 219, 220, 214"
tirar  target:[  
	(estadojuego = 1) ifTrue: [  
	self tirardados. numero contents: valordado asString. estadojuego := 2]].
tirar label:'Tirar Dado'.
tirar actionSelector: #value.
	
numero := StringMorph new.
numero contents: 'result'.
numero position: ((tamInter*40)+25)@80.
interfaz addMorph: numero.

pasarturno := SimpleButtonMorph new.
interfaz addMorph: pasarturno.
pasarturno  position: (tamInter*40)@200.
pasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
pasarturno  target:[ (estadoturno = 1) ifTrue: [ estadoturno := 2 ]
	                                    ifFalse: [ estadoturno := 1 ].
	estadojuego := 1
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.