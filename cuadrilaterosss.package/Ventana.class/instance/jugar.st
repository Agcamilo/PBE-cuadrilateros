funciones de inicio
jugar
|ju1 ju2 ini dim Ven aux logo|
	p1:= Jugadores new.
	p2:= Jugadores new.
	Ven:= SystemWindow new.
	Ven extent: 1200@800.
	
	ju1 := SimpleButtonMorph new.
	ju1 position: 200@340.
	ju1 label: 'JUGADOR 1'.
	ju1 extent: 305@30.
	ju1 actionSelector: #value.
	ju1 target:[
		p1 setNombre: 1.
		p1 setColor.
		"Ven removeMorph: ju1."
		ju1 color: (Color r:46/255 g:155/255 b:119/255).
		].

	ju2:= SimpleButtonMorph new.
	ju2 label: 'JUGADOR 2'.
	ju2 position: 515@340.
	ju2 extent: 305@30.
	ju2 actionSelector: #value.
	ju2 target:[
		p2 setNombre: 2.
		p2 setColor.
		"Ven removeMorph: ju2."
		ju2 color: (Color r:46/255 g:155/255 b:119/255).
		].

	dim:= SimpleButtonMorph new.
	dim label: 'DIMENSION DEL TABLERO'.
	dim position: 200@300.
	dim extent: 620@30.
	dim actionSelector: #value.
	dim target:[
		tamInter  := UIManager default
	chooseFrom: #('5x5' '10x10' '15x15' '20x20') lines: #(2 4) message: 'Elija dimensiones del tablero'.
		aux := #(5 10 15 20).
		tamInter  := aux at: tamInter .
		dim color: (Color r:46/255 g:155/255 b:119/255).
		].
	
	logo:= ImageMorph new.
	logo form: (Form fromFileNamed:'C:\Users\julia\OneDrive\Escritorio\LOGO.png').
	logo position: 0@50.
	Ven addMorph: logo.
	Ven addMorph: ju1.
	Ven addMorph: ju2.
	Ven addMorph: dim.
	Ven setLabel: ''.

	ini:= SimpleButtonMorph new.
	ini position: 200@390.
	ini label: 'INICIAR'.
	ini extent: 620@60.
	ini actionSelector: #value.
	ini target:[
		Ven removeMorph: ini.
		Ven delete.
		self iniciar.
		].
	Ven addMorph: ini.
	Ven openInWorld .
