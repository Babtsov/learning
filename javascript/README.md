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
## Object Oriented Javascript & prototypes
```javascript
// Define a new Car "class" 
function Car(name, color) {
    this.name = name;
    this.color = color;
}
// each function in javascript comes with a "prototype" object attached to it
console.log(Car.prototype); // an object 
// Also, at this point, Car.prototype has a "constructor" property which points back to Car
console.log(Car.prototype.constructor === Car); // True
// it also has a __proto__ property, but we won't bother for now.

// now, attach a function to Car's prototype
Car.prototype.drive = function() {
    console.log("I'm " + this.name + " and I'm driving.");
}

// and instantiate a new Car
var joe = new Car("joe","red");

// when we invoke the following:
joe.drive();
// Object joe by itself doesn't have a function named drive(). Nevertheless, the drive() function is
// resolved by the javascript engine by looking at joe.__proto__ which is the same as Car.prototype
console.log(joe.__proto__ === Car.prototype); // True
// So to summerize, each time we use the "new" keyword, it creates an object and sets its __proto__
// property to point to its "class'" prototype property.

// actually, we can go one more level with __proto__ to see what joe inherits from the root Object
console.log(joe.__proto__.__proto__ === Object.prototype); // True
// All objects inherit methods and properties from Object.prototype
```
