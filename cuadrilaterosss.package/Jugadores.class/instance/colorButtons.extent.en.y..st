as yet unclassified
colorButtons: aColor extent: posicion en: aButton y:ven 
	aButton extent: 30@30.
	aButton borderWidth: 1.
	aButton position: posicion.
	aButton color: aColor.
	aButton actionSelector: #value.
	aButton target:[
		 color:= aColor.
		 ven delete.
		].