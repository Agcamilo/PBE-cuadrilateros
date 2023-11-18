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
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.