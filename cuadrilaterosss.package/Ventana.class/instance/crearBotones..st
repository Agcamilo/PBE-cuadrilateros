as yet unclassified
crearBotones:a
	tirar:= SimpleButtonMorph new.
	tirar extent: 20@20.
	interfaz addMorph: tirar.
	tirar position: 400@400.
	
	tirar target:[ Transcript clear.Transcript show:'toque el boton tirar'.banderaDado signal].
	tirar label:'tirar dado'.
	tirar actionSelector: #value.

tablero:= Tablero new initialize:a.
	interfaz addMorph: tablero.
	tablero position: 50@50.
	
iniciar:= SimpleButtonMorph new.
interfaz addMorph: iniciar.
iniciar position: 500@500.
tirar target:[ self jugar.].
tirar label:'iniciar'.
	