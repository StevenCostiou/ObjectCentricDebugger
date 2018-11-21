Halt - any method
testHaltOnAnyMethodCall
	object1 breakOnCall.
	self should: [ object1 m1 ] raise: Break.
	self should: [ object1 m2 ] raise: Break.
	self shouldnt: [ object2 m1 ] raise: Break