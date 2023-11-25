botones
crearTablero: tamaño
|marco|
	tablero:= Tablero new initialize:tamInter.
	interfaz addMorph: tablero.
	marco:= ImageMorph new.
	(tamInter) caseOf:{
		10 ->[marco form: (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/MARCO1.png'). marco position: 27@7].
		15 ->[marco form: (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/MARCO2.png'). marco position: (-10)@(-35)].
		20 ->[marco form: (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/MARCO3.png'). marco position: (-47)@(-48)].
	}.
	interfaz addMorph: marco.
	tablero position: 50@50.
	interfaz setLabel: 'Cuadrilateros'.