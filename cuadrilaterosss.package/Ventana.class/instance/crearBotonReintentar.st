botones
crearBotonReintentar
|reintentar imagen|
reintentar := SimpleButtonMorph new.
interfaz addMorph: reintentar.
imagen:= ImageMorph new.
imagen form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/BOTONREINTENTAR.png').
imagen position: ((tamInter*25)+85)@(295+extra).
interfaz addMorph: imagen.
reintentar position: ((tamInter*25)+100)@(320+extra).
reintentar color: (Color r:0.858 g:0.862 b:0.839). 
reintentar label:'Reintentar'.
reintentar extent: 120@25.
reintentar borderWidth: 0.
reintentar actionSelector: #value.
reintentar target: [ 
	Transcript show: estadoturno .
	Transcript show: ultimojugador .
	(estadoturno = ultimojugador) ifTrue: [  
	self cambiarestados. 
	estadojuego := 2
	].
	 ].