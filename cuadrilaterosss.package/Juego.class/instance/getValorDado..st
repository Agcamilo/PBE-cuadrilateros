accessing
getValorDado: n
	(n=1) ifTrue: [ ^D1 getValorJ ]
			ifFalse: [ ^D2 getValorJ ]