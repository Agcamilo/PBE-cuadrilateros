funciones de inicio
jugar
"abre el menu inicial del juego donde se podra elegir el tamaño del tablero y el nombre y color de cada jugador"
|ju1 ju2 ini dim Ven aux logo bandera1 bandera2 creditos|
	p1:= Jugadores new.
	p2:= Jugadores new.
	Ven:= SystemWindow new.
	Ven extent: 1050@600.
	bandera1 := 0.
	bandera2 := 0.
	
	creditos:= StringMorph new.
	Ven addMorph: creditos.
	creditos contents: 'Creditos: Camilo Aguirre. Joaquin Bianciotto. Julián Colombo. Yoel Mario Marain'.
	creditos position: 0@580.
	
	ju1 := SimpleButtonMorph new.
	ju1 position: 200@340.
	ju1 label: 'JUGADOR 1'.
	ju1 extent: 305@30.
	ju1 actionSelector: #value.
	ju1 target:[
		bandera1 := 1.
		p1 setNombre: 1.
		p1 setColor.
		ju1 color: (Color r:46/255 g:155/255 b:119/255).
		].

	ju2:= SimpleButtonMorph new.
	ju2 label: 'JUGADOR 2'.
	ju2 position: 515@340.
	ju2 extent: 305@30.
	ju2 actionSelector: #value.
	ju2 target:[
		bandera2 := 1.
		p2 setNombre: 2.
		p2 setColor.
		ju2 color: (Color r:46/255 g:155/255 b:119/255).
		].

	dim:= SimpleButtonMorph new.
	dim label: 'DIMENSION DEL TABLERO'.
	dim position: 200@300.
	dim extent: 620@30.
	dim actionSelector: #value.
	dim target:[
		tamInter  := UIManager default
	chooseFrom: #('10x10' '15x15' '20x20') lines: #(4 4) message: 'Elija dimensiones del tablero'.
	(tamInter = 0) ifTrue:[tamInter:= 1].
		aux := #(10 15 20).
		tamInter  := aux at: tamInter .
		dim color: (Color r:46/255 g:155/255 b:119/255).
		].
	
	logo:= ImageMorph new.
	logo form: (Form fromFileNamed:'pharo-local/iceberg/Agcamilo/PBE-cuadrilateros/Dados/LOGO.png').
	logo position: 0@50.
	Ven addMorph: logo.
	Ven addMorph: ju1.
	Ven addMorph: ju2.
	Ven addMorph: dim.
	Ven setLabel: ''.

	ini:= SimpleButtonMorph new.
	ini position: 200@390.
	ini label: 'JUGAR'.
	ini extent: 620@60.
	ini actionSelector: #value.
	ini target:[
		((bandera1 = 1 )& (bandera2 = 1) & (aux ~= nil)) ifTrue: [  
		Ven removeMorph: ini.
		Ven delete.
		self iniciar.
		].
		].
	Ven addMorph: ini.
	Ven openInWorld .
