funciones de inicio
jugar
|ju1 ju2 ini dim Ven aux |
	p1:= Jugadores new.
	p2:= Jugadores new.
	Ven:= SystemWindow new.
	Ven extent: 400@500.
	
	ju1 := SimpleButtonMorph new.
	ju1 position: 150@70.
	ju1 label: 'JUGADOR 1'.
	ju1 actionSelector: #value.
	ju1 target:[
		p1 setNombre: 1.
		p1 setColor.
		"Ven removeMorph: ju1."
		ju1 color: (Color r:46/255 g:155/255 b:119/255).
		].

	ju2:= SimpleButtonMorph new.
	ju2 position: 150@110.
	ju2 label: 'JUGADOR 2'.
	ju2 actionSelector: #value.
	ju2 target:[
		p2 setNombre: 2.
		p2 setColor.
		"Ven removeMorph: ju2."
		ju2 color: (Color r:46/255 g:155/255 b:119/255).
		].

	dim:= SimpleButtonMorph new.
	dim position: 122@150.
	dim label: 'Dimension del tablero'.
	dim actionSelector: #value.
	dim target:[
		tamInter  := UIManager default
	chooseFrom: #('5x5' '10x10' '15x15' '20x20') lines: #(2 4) message: 'Elija dimensiones del tablero'.
		aux := #(5 10 15 20).
		tamInter  := aux at: tamInter .
		dim color: (Color r:46/255 g:155/255 b:119/255).
		].
	
	
	Ven addMorph: ju1.
	Ven addMorph: ju2.
	Ven addMorph: dim.

	ini:= SimpleButtonMorph new.
	ini position: 156@190.
	ini label: 'INICIAR'.
	ini actionSelector: #value.
	ini target:[
		Ven removeMorph: ini.
		Ven delete.
		self iniciar.
		].
	Ven addMorph: ini.
	Ven openInWorld .
