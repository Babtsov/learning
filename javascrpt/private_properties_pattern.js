"use strict";

// Arrange
function Qaz(name, val) {
    
    // private properties
    var privateString = "hidden";
    var privateArray = [];
    // define our own prototype
    Qaz.prototype = {
        constructor: Qaz,
        getPrivateString: function () {
            return privateString;
        },
        printPrivateArray: function () {
            console.log(privateArray);
        },
        appendPrivateArray: function(val) {
            privateArray.push(val);
        }
    }
    // set the object instance's prototype to Qaz.prototype
    var self = Object.create(Qaz.prototype);
    // set public properties
    self.name = name;
    self.val = val;
    return self;
    
}

// Act
var qaz = new Qaz("judge",9); // can also be created without the "new" keyword

// Assert
console.assert(qaz.getPrivateString() === "hidden");
console.assert(qaz.privateString === undefined); // no such (public) property exists
console.assert(Object.getPrototypeOf(qaz) === Qaz.prototype); // sanity check for prototype chain
console.assert(Qaz.prototype.constructor === Qaz);
