reflective operations
messageReceived: aMessage by: anObject
	| selector |
	selector := aMessage selector.
	stopHalting
		ifTrue: [ ^ self restore: anObject ].
	(capturedMethodNames includes: selector)
		ifTrue: [ ^ self ].
	self installBreakPointOnMethodNamed: selector for: anObject.
	capturedMethodNames includes: selector.
	stopHalting := self haltOnce