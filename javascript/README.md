## Execution Context
Each function invocation creates its own execution context. it contains the following references:   
* Variable Environment - for the variables created inside this execution context (inside the function body). Perhaps it also contains arguments passed to the function.
* Outer Environment - for the variables that live in the function's outter lexical environment. Lexical scope usually refers to where the function physically sits in the code. This is used as a part of the "scope chain".
* this - points to an object depending on how the function is invoked. 

### Examples:
##### `this` pointing to the global object
```javascript 
function foo() {
	this.bar = "judge";
}
foo();
console.log(bar); // prints "judge" because 'this' points to the global object (Window)
```
##### `this` pointing to a particular object
```javascript 
var foo = {
    name: "foo",
    bar: function () {
        console.log(this);
    }
};
foo.bar(); // prints Object {name: "foo"} because 'this' points to the object foo
```
##### a function holding reference to its Outer environment
```javascript
function greet(name) {
    var greeting = "hi " + name;
    return function (callback) {
        return callback(greeting + "!");
    };
}
var retFunct = greet("Qaz");
// At this point, retFunct still has reference to variable 'greeting' although greet() was executed and
// is already popped from the stack. This demonstrates the concept of function holding reference to 
// its outer environment. In other words, the variable 'greeting' is inside retFunct's lexical scope.
var val = retFunct(function (input) {
    console.log("input inside: " + input); // prints "input inside: hi Qaz!"
    return input + "?";
});
console.log(val); // prints "hi Qaz!?"
```
