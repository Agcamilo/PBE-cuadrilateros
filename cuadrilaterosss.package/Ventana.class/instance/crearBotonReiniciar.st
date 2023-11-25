botones
crearBotonReiniciar
"volver a iniciar el juego con la configuracion inicial"
	|opcion boton imagen|
		
	boton:= SimpleButtonMorph new.
	interfaz addMorph: boton.
	imagen:= ImageMorph new.
	imagen form: (Form fromFileNamed: 'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/BOTONREINICIAR.png').
	imagen position: (35)@(tamInter*25+45).
	interfaz addMorph: imagen.
	boton position: (50)@(tamInter*25+70).
	boton color: (Color r:0.858 g:0.862 b:0.839). 
	boton label:'Reiniciar'.
	boton extent: 120@25.
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
	
	