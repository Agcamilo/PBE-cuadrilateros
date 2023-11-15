initialization
initialize: cantCeldas
	|celda origen n|
	super initialize.
	celda:= Celda new.
	n:= cantCeldas.
	"self bounds: (1@1 extent:(n*ancho@n*alto)+(2+self borderWidth ))".
	self extent: (25*n+10)@(25*n).
	celdas:= Array2D new:n.
	
	1 to: n do:[:i|
		1 to: n do:[:j|
			celda:= Celda new.
			celda setX: i.
			celda setY:j.
			origen:= self innerBounds origin.
			celdas at:i at:j put:celda.
			self addMorph: (celdas at:i at:j).
			(celdas at:i at:j) position: ((i-1)*(25))@((j-1)*(25))+origen.
			celda mouseAction:[Transcript show:'hola'].
		]
	]
	