as yet unclassified
crearBotones:a


   tablero:= Tablero new initialize:a.
	interfaz addMorph: tablero.
	tablero position: 50@50.
	


tirar:= SimpleButtonMorph new.
interfaz addMorph: tirar.
tirar position: 500@500.
tirar  target:[  
	(estadojuego = 1) ifTrue: [  
	self tirardados. numero contents: valordado asString.]].
tirar label:'Tirar Dado'.
tirar actionSelector: #value.
	
numero := StringMorph new.
numero contents: 'El valor del dado aparecera aqui'.
numero position: 450@450.
interfaz addMorph: numero.

pasarturno := SimpleButtonMorph new.
interfaz addMorph: pasarturno.
pasarturno  position: 500@600.
pasarturno  target:[  estadojuego := 2 "solo para prueba".Transcript show: 'boton pasar, aca se descontaria vida y cambia estado juego'].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.