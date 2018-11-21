reflective operations
messageReceived: aMessage by: anObject
	| selector |
	selector := aMessage selector.
	(capturedMethodNames includes: selector)
		ifTrue: [ ^ self ].
	self installBreakPointOnMethodNamed: selector for: anObject.
	capturedMethodNames includes: selector