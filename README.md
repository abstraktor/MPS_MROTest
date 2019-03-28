# Background
An MPS concept can extend one other concept and implement multiple interfaces. An interface may extend multiple other interfaces. Both, concepts and interfaces may contain methods.

First of all, method calls reference the target method by id, so name collisions are resolved at the time when typing the method call, when the programmer decides between one or the other method. This can also be verified by Ctrl+Clicking the reference and seeing to which method MPS navigates. This also implies that a method name can be changed when overriding it, since the “overriding” characteristic similarly is matched based on both methods sharing their method id. To be clear on what we refer to, let’s call the base method and all its overriding methods the “method family”, and when referring to one particular implementation of a base or overriding method, we’ll be speaking about the “implementation”.

Note that the class name next to “overrides” just tells us where the base method is implemented. So this is not a datum that we can change to influence which method implementation will be executed. If A extends O, which extends BaseConcept, and all of them implement getPresentation, then the getPresentation implementation of A will show “overrides BaseConcept.getPresentation”, even though there is the O implementation of getPresentation in between.

Since interfaces may override methods, it’s still unclear what method will be called when two interfaces A and B override a method from a shared superinterface.

# TLDR
In general, this is how MPS determines, what implementation to use when calling an overridden method:

1)    If the current concept implements a matching method, invoke it. Return the computed value.
2)    Invoke the algorithm recursively for an extended concept, if there is one. In case of success return the computed value.
3)    Invoke the algorithm recursively for all implemented concept interfaces in the order of their definition in the implements section. The first found interface implementing the method is used. In case of success return the computed value.
4)    Return failure.

This is mostly documented like that in the [jetbrains mps wiki](https://confluence.jetbrains.com/display/MPSD20183/Behavior). Just that step 2 and 3 are mistakenly swapped there.

Considering only interfaces, the method resolution order is the C3 linearization order that is also used in Python 2 and 3.

# Example Setup
This example bases on the [C3 linearization algorithm example on wikipedia](https://en.wikipedia.org/wiki/C3_linearization#Example_demonstrated_in_Python_3)

```
concept Z extends Z_Super and implements interfaces K1, K2, and K3
concept Z_Super extends Z_SuperSuper and implements BaseInterface
concept Z_SuperSuper extends BaseConcept and implements BaseInterface
interface A extends interface O
interface B extends interface O
interface C extends interface O
interface D extends interface O
interface E extends interface O
interface O extends interface BaseInterface
interface K1 extends interfaces A, B, and C
interface K2 extends interfaces D, B, and E
interface K3 extends interfaces D, and A
```
<img src="https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2022.53.35.png?raw=true" width="300px" />

# Test 1: Inspect the MRO

The core dispatch of behavior methods is implemented in [BaseBHDescriptor.java](https://github.com/JetBrains/MPS/blob/master/core/aspects/behavior/behavior-runtime/source/jetbrains/mps/core/aspects/behaviour/BaseBHDescriptor.java). In its `initVirtualTables`, we see that it retrieves the list of concepts that should be looked up from `myAncestorCache.getAncestorsInvocationOrder()`. So let's retrieve the order right from there and inspect it. The code for it basically looks like so:

```
new AncestorCache(aConcept, getBehaviorRegistry()).myLinearization
```

The calculated method resolution order for `Z` looks like that:

![](https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2022.57.58.png?raw=true)

So it is visible that the concepts are called first, and then the interfaces. For the interfaces, the same order as in the [wikipedia example](https://en.wikipedia.org/wiki/C3_linearization#Example_demonstrated_in_Python_3) comes out: Direct parents are visited first, then their parents are visited, while trying to satisfy the relative orders in all the lists. In our case, B is visited before C to satisfy the relative order in K1; and B is also visited before E to satisfy the order defined in K2. Since this holds transitively, D also has to be before B, since K3 wants D before A and K1 wants A before B.
BaseConcept seems to play a special role here, as it is artificially moved to the end.


# Test 2: Call an overridden method

To verify this order, I added a method to the BaseInterface that tells its name. All inheritors override this method and implement it by calling super, prepend their own name to it and returning the result. 

For `BaseInterface`:
![](https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2022.58.30.png?raw=true)

For `A`:
![](https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2023.00.06.png?raw=true)

(I implemented all other concepts and interfaces correspondingly)


When calling this method on Z, there is not much to see. As only the first method of multiple possibilities is called, we can see the extension relationship and at the very last the interface method itself got called. BaseConcept is not listed here, as it doesn’t implement this method.
![](https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2022.59.39.png?raw=true)


To see the method call bubble through interface inheritance, I removed the superclass of Z. We can see that from each concept’s list of implemented interfaces, the first entry was taken. Here's the result:
![](https://github.com/abstraktor/MPS_MROTest/blob/master/figures/Bildschirmfoto%202019-03-28%20um%2022.59.31.png?raw=true)


# Further Details

An interface may override a method of a concept, simply by implementing a method with the same id. This is a weird thing though…

The original paper that introduced the C3 algorithm (they built it for Dylan) can be found [here](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.19.3910&rep=rep1&type=pdf).

The C3 is in MPS implemented in [AbstractC3StarMethodResolutionOrder.java](https://github.com/JetBrains/MPS/blob/master/core/aspects/behavior/behavior-api/source/jetbrains/mps/core/aspects/behaviour/AbstractC3StarMethodResolutionOrder.java). 
