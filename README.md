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
#haltOnCall
#haltOnCall: #aMethodSelector

#haltOnWrite
#haltOnRead
#haltOnStateAccess

#haltOnReadTo: #anInstVarName
#haltOnWriteTo: #anInstVarName
#haltOnAccessTo: #anInstVarName

#removeStateAccessHalts
```
    
   
