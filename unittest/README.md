# Resources:
## google talk: https://www.youtube.com/watch?v=wEhu57pih5w

## How to write hard to test code:
* mixing the new operator with business logic
* looking for things
* work in the consteuctor
* having a global state
* singletons (another case of global state)
* static methods (not including a "leaf method")
* deep inheritance 
* too many conditionals

## Other interesting points:
* we can test at different levels
* unit testing is testing at the class level
* functional testing is testing at the "group of classes" level (you want to see if a group of classes work together properly)
* scenario testing is testing at the "application" level (does the application behave correctly as a whole)
* in order to unit test a class, that class must be isolateable (that way, if the test fails, you know exactly who's fault it was)
* in order for a class to be isolateable, all of its dependencies must be passed in its constructor (the class itself must not "new" (create) any instances of the classes it depends on)
* when testing a certain class, you can pass in stub objects, mock objects, or friendly objects to its constructor to satisfy its dependencies
* whether you pass in stub, mock, or friendly objects, if the test fails, you KNOW its not b/c of the passed in dependencies, therefore it must be the fault of the object being tested
* if you code so that your class gets all of its dependencies in its constructor, then you are doing "dependency injection"

# Mockito

## Arrange
* ```when(mock.method(2, "asda")).thenReturn(something);``` mock returns something when method is called.  
* ```when(myMockedList.get(anyInt())).thenThrow(new NullPointerException());``` for non-void methods  
* ```doThrow(new RuntimeException()).when(myMockedList).clear();``` for void methods

## Assert
* ```verify(mock).method("someloggingInfo", cmdObj);```  Verifies certain behavior happened once.  
* ```assertThat(locoRecord.getMsg()).isEqualTo("");```
