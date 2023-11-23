as yet unclassified
comodin
|RTA|
(COMODIN)ifTrue:[
	RTA:= 'a'.
	[(RTA = '1') | (RTA = '2') | (RTA = '3') | (RTA = '4') | (RTA = '5') | (RTA = '6')] whileFalse:[
		RTA:= UIManager default request:'Ingrese un valor del 1 al 6'.
	].
	self cambio: (RTA asNumber).
].