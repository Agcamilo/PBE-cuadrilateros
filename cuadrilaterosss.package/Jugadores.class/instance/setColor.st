accessing
setColor
	"El usuario eligira su color a representar"
	"scope: variable de instancia a usar: color"
	|ven c1 c2 c3 c4 c5 c6 title|
	
	title:= StringMorph new.
	ven:= SystemWindow new.
	c1:= SimpleButtonMorph new.
	c2:= SimpleButtonMorph new.
	c3:= SimpleButtonMorph new.
	c4:= SimpleButtonMorph new.
	c5:= SimpleButtonMorph new.
	c6:= SimpleButtonMorph new.
	
	title contents: 'ELIJA UN COLOR'.
	title position: 30@40.
	title emphasis: 2r1.
	
	ven extent: 145@280.
	self colorButtons: (Color r:73/255 g:208/255 b:163/255) off: (Color r:66/255 g:187/255 b:147/255) extent: (15@70) en: c1 y: ven.
	self colorButtons: (Color r:31/255 g:136/255 b:214/255) off: (Color r:27/255 g:108/255 b:168/255) extent:(15@140) en:c2 y:ven.
	self colorButtons: (Color r:212/255 g:53/255 b:31/255) off: (Color r:189/255 g:45/255 b:25/255) extent:(15@210) en:c3 y:ven.
	self colorButtons: (Color r:245/255 g:245/255 b:245/255) off: (Color r:235/255 g:235/255 b:235/255) extent:(80@70) en:c4 y:ven.
	self colorButtons: (Color r:227/255 g:148/255 b:47/255) off: (Color r:185/255 g:121/255 b:38/255) extent:(80@140) en:c5 y:ven.
	self colorButtons: (Color r:202/255 g:56/255 b:206/255) off: (Color r:171/255 g:51/255 b:175/255) extent:(80@210) en:c6 y:ven.
	
	ven addMorph: title.
	ven addMorph: c1.
	ven addMorph: c2.
	ven addMorph: c3.
	ven addMorph: c4.
	ven addMorph: c5.
	ven addMorph: c6.
	ven setLabel: ''.
	ven beUnresizeable.
	ven openInWorld.
	
	
	