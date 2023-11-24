botones
crearBotonReintentar
|reintentar|
reintentar := SimpleButtonMorph new.
interfaz addMorph: reintentar.
reintentar position: (tamInter*10)@((tamInter*28)+50).
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