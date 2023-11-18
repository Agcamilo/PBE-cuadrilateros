botones
crearPasasTurno
pasarturno := SimpleButtonMorph new.
interfaz addMorph: pasarturno.
pasarturno  position: (tamInter*40)@200.
pasarturno  color: (Color r:0.858 g:0.862 b:0.839). 
pasarturno  target:[ self cambiarestados 
	"aca se tiene q descontar una vida"
	 ].
pasarturno label:'Pasar Turno'.
pasarturno actionSelector: #value.