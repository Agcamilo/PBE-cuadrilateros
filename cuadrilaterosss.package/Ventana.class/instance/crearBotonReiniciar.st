botones
crearBotonReiniciar
"volver a iniciar el juego con la configuracion inicial"
	|opcion boton|
		
	boton:= SimpleButtonMorph new.
	interfaz  addMorph: boton.
	boton position: (500@500).
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
								
							
							]
		
		].
	
	