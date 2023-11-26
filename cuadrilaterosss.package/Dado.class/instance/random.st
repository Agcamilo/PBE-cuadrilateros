accessing
random
|a randomizer|
randomizer := Random new. "usar un objeto de la clase random mejora la generacion de numeros aleatorios"
a:= randomizer nextIntegerBetween:1 and: 14.
(a = 1) ifTrue:[self cambio: 7]ifFalse:[
	a:=randomizer nextIntegerBetween:1 and: 6.
	self cambio: a.
].