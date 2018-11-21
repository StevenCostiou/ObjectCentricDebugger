handling
handleMessage: aMessage toTarget: anObject
	| selector |
	selector := aMessage selector.
	('print*' match: selector asString asLowercase)
		ifFalse: [ (#(#class) includes: selector)
				ifFalse: [ debugger messageReceived: aMessage by: anObject ] ].
	selector crLog.
	^ aMessage sendTo: anObject