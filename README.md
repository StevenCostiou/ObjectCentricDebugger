# Object Centric Debugger
New implementation of OCD for Pharo 7

# Installation: do it in a playground
```Smalltalk
Metacello new
    baseline: 'ObjectCentricDebugger';
    repository: 'github://StevenCostiou/ObjectCentricDebugger';
    load.
 ```
 
 # API
```Smalltalk
#haltOnWriteAccess
#haltOnReadAccess
#haltOnStateAccess

#haltOnReadAccessTo: anInstVarName
#haltOnWriteAccessTo: anInstVarName
#haltOnAccessTo: anInstVarName

#removeStateAccessHalts
```
    
   
