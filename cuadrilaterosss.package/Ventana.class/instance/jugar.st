as yet unclassified
jugar
| flag |
flag := 1.
[ flag = 1 ] whileTrue: [
		Transcript show:'hola'.
		sensor waitButton .
		Transcript show: 'chau'.
		flag := 0 ].