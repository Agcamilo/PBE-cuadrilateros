logica del juego
jugar
|ju1 ju2 ini Ven|
	p1:= Jugadores new.
	p2:= Jugadores new.
	Ven:= SystemWindow new.
	Ven extent: 500@500.
	
	ju1 := SimpleButtonMorph new.
	ju1 extent: 80@40.
	ju1 position: 50@50.
	ju1 label: 'JUGADOR 1'.
	ju1 actionSelector: #value.
	ju1 target:[
		p1 setNombre: 1.
		p1 setColor.
		Ven removeMorph: ju1.
		].

	ju2:= SimpleButtonMorph new.
	ju2 extent: 80@40.
	ju2 position: 50@90.
	ju2 label: 'JUGADOR 2'.
	ju2 actionSelector: #value.
	ju2 target:[
		p2 setNombre: 2.
		p2 setColor.
		Ven removeMorph: ju2.
		].


	Ven addMorph: ju1.
	Ven addMorph: ju2.

	ini:= SimpleButtonMorph new.
	ini extent: 50@40.
	ini position: 50@130.
	ini label: 'INICIAR'.
	ini actionSelector: #value.
	ini target:[
		Ven removeMorph: ini.
		Ven delete.
		self iniciar.
		].
	Ven addMorph: ini.
	Ven openInWorld .
