initialization
initialize
	super initialize.
	self label:''.
	bounds:= 0@0 corner:25@25.
	self useSquareCorners.
	self borderWidth: 1.
	offColor := Color lightGray.
	self turnOff.
	self actionSelector: nil.
	ocupado:= false.