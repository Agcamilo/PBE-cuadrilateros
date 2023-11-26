game logic
finDelJuego: unJugador
	"ventana de fin de juego."
	|ventana ganador Messi|
	estadojuego := 0.
	estadoturno := 0.
	ventana:= SystemWindow new.
	ventana extent: 403@503.
	ventana setLabel: 'Fin del juego'.
	ganador := StringMorph new.
	ganador contents: 'el ganador es ', unJugador getNombre,' con:',(unJugador getPuntaje) asString,' puntos'.
	ventana  addMorph: ganador.
	ganador position: 50@50.
	Messi:= ImageMorph new.
	Messi form: (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/Messi.png').
	Messi position: 20@80.
	ventana  addMorph: Messi.
	ventana openInWorld.
	