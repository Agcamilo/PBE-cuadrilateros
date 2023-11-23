as yet unclassified
colorButtons: aColor off: aColorOff extent: posicion en: aButton y:ven 
	aButton extent: 30@30.
	aButton borderWidth: 1.
	aButton position: posicion.
	aButton color: aColor.
	aButton actionSelector: #value.
	aButton label:'      '.
	aButton target:[
		 color:= aColor.
		 offcolor:= aColorOff.
		 ven delete.
		].
