initialization
initialize: cantCeldas
	|celda origen n|
	super initialize.
	celda:= Celda new.
	n:= cantCeldas.
	"self bounds: (1@1 extent:(n*ancho@n*alto)+(2+self borderWidth ))".
	self extent: (25*n+10)@(25*n).
	self color: (Color r:0.827 g:0.827 b:0.827). "La escala del RGB color es de 0 a 1"
	self borderColor: Color transparent.
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
			celda mouseAction: [self verificarCuadrilatero: (celdas at:2 at:2) hasta: (celdas at:i at:j)].
		]
	]
	