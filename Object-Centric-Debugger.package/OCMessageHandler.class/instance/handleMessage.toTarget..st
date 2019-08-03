handling
handleMessage: aMessage toTarget: anObject
	| selector |
	selector := aMessage selector.
	(#('*print*' '*glamour*' '*glamor*' '*gt*' '*display*' '*perform*' 'hash' '*inspector*' '*halt*' 'withargs:executemethod:' '=' 'isbehavior' '*inspection*' '*inspect*')
		anySatisfy: [ :str | str asLowercase match: selector asString asLowercase ])
		ifFalse: [ (#(#class #readSlot:) includes: selector)
				ifFalse: [ 'log.txt' asFileReference writeStream
						nextPutAll: 'log.txt' asFileReference readStream contents;
						crlf;
						nextPutAll: aMessage asString;
						crlf;
						close.
					debugger messageReceived: aMessage by: anObject ] ].
	^ aMessage sendTo: anObject