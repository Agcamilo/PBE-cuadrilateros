botones
crearTablero: tamaño
	tablero:= Tablero new initialize:tamInter.
	interfaz addMorph: tablero.
	tablero position: 50@50.
	interfaz setLabel: 'Cuadrilateros'.