accessing
random
|a|
a:= (1 to:30) atRandom.
(a = 1) ifTrue:[self cambio: 7]ifFalse:[
	a:=(1 to:6) atRandom.
	self cambio: a.
].