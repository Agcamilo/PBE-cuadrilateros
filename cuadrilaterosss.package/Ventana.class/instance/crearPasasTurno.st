botones
crearPasasTurno
pasarturno := SimpleButtonMorph new.
interfaz addMorph: pasarturno.
pasarturno  position: (tamInter*40)@200.
pasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
pasarturno  target:[ 
	(estadoturno  =1) ifTrue:[p1 reducirVida.] 
						  ifFalse:[ p2 reducirVida.].
	self cambiarestados.
				(p1 getVida = 0) ifTrue:[self finDelJuego: p2. estadojuego :=0].
				(p2 getVida = 0) ifTrue:[self finDelJuego: p1. estadojuego :=0].
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.