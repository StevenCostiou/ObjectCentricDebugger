Halt - any method
testHaltOnSpecificMethod
	object1 breakOnCall: #m1.
	self should: [ object1 m1 ] raise: Break.
	self shouldnt: [ object1 m2 ] raise: Break.
	self shouldnt: [ object2 m1 ] raise: Break