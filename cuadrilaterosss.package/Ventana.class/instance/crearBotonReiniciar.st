botones
crearBotonReiniciar
"volver a iniciar el juego con la configuracion inicial"
	|opcion boton|
		
	boton:= SimpleButtonMorph new.
	interfaz addMorph: boton.
	boton position: (tamInter*40)@400.
	boton color: (Color r:0.858 g:0.862 b:0.839). 
	boton label:'Reiniciar'.
	boton actionSelector: #value.
	
	boton target:[
		opcion := UIManager default
				chooseFrom: #('Reiniciar juego actual' 'Iniciar nuevo juego') lines: #(2 4) message: 'Reiniciar desde:'.
		
		(opcion =2) ifTrue:[
				interfaz delete.
				self jugar.
			]
						ifFalse:[
								p1 resetVida. p1 setPuntaje: 0.
								p2 resetVida. p2 setPuntaje: 0.
								interfaz delete.
								self iniciar.
							]
		
		].
	
	