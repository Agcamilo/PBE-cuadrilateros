game logic
finDelJuego: unJugador
	"motivo 1= fin por tablero lleno
	motivo 2= un jugador se quedo sin vida"
	|ventana ganador|
	ventana:= SystemWindow new.
	ventana extent: 300@200.
	ventana setLabel: 'Fin del juego'.
	ganador := StringMorph new.
	ganador contents: 'el ganador es ', p1 getNombre,' con:',(p1 getPuntaje) asString,' puntos'.
	ventana  addMorph: ganador.
	ventana addMorph: numerodado1.
	ganador position: 50@50.
		
	ventana openInWorld.
	