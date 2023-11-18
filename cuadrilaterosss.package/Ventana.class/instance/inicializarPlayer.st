as yet unclassified
inicializarPlayer
	"menu para iniciarlizar los juagadores"
	|ju1 ju2 ini|
	ju1 := SimpleButtonMorph new.
	ju1 extent: 80@40.
	ju1 position: (tamInter*23)@50.
	ju1 label: 'JUGADOR 1'.
	ju1 actionSelector: #value.
	ju1 target:[
		p1 setNombre: 1.
		p1 setColor.
		interfaz removeMorph: ju1.
		].

	ju2:= SimpleButtonMorph new.
	ju2 extent: 80@40.
	ju2 position: (tamInter*23)@90.
	ju2 label: 'JUGADOR 2'.
	ju2 actionSelector: #value.
	ju2 target:[
		p2 setNombre: 2.
		p2 setColor.
		interfaz removeMorph: ju2.
		].


	interfaz addMorph: ju1.
	interfaz addMorph: ju2.

	ini:= SimpleButtonMorph new.
	ini extent: 80@40.
	ini position: (tamInter*23)@130.
	ini label: 'INICIAR'.
	ini actionSelector: #value.
	ini target:[
		self crearBotones: tamInter.
		interfaz removeMorph: ini.
		].
interfaz addMorph: ini.