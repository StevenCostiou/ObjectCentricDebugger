handling
handleMessage: aMessage toTarget: anObject
	| selector |
	selector := aMessage selector.
	(#('print*' '*glamour*' '*glamor*' '*gt*' '*display*')
		anySatisfy: [ :str | str match: selector asString asLowercase ])
		ifFalse: [ (#(#class) includes: selector)
				ifFalse: [ debugger messageReceived: aMessage by: anObject ] ].
	^ aMessage sendTo: anObject