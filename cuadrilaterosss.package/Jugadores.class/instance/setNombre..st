accessing
setNombre: x
	"el jugador podra ingresar su nombre"

	"variables de instacia a usar: nombre"
	
	nombre:= UIManager default request: ('Introducir nombre:del jugador',x asString) asString.
	

	