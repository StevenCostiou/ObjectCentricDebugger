as yet unclassified
knowsObject: anObject
	^ self collectedObjects anySatisfy: [ :o | o == anObject ]