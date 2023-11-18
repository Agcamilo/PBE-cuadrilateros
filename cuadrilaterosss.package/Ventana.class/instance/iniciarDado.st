botones
iniciarDado
	tirar:= SimpleButtonMorph new.
interfaz addMorph: tirar.
(tamInter<10)ifTrue:[tamInter:=8]. "en el caso del tablero 5x5".
tirar position: (tamInter*40)@100.
tirar color: (Color r:0.858 g:0.862 b:0.839). "RGB: 219, 220, 214"
tirar  target:[  
	(estadojuego = 1) ifTrue: [  
	self tirardados. estadojuego := 2]].
tirar label:'Tirar Dado'.
tirar actionSelector: #value.