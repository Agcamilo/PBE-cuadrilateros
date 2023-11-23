game logic
finDelJuego: unJugador
	
	|ventana ganador|
	estadojuego := 0.
	estadoturno := 0.
	ventana:= SystemWindow new.
	ventana extent: 300@200.
	ventana setLabel: 'Fin del juego'.
	ganador := StringMorph new.
	ganador contents: 'el ganador es ', unJugador getNombre,' con:',(unJugador getPuntaje) asString,' puntos'.
	ventana  addMorph: ganador.
	"ventana addMorph: numerodado1."
	ganador position: 50@50.
		
	ventana openInWorld.
	