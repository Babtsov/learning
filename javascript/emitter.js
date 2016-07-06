/////////////////////////// Version 1 /////////////////////////// 
(function (global) {
    "use strict";
    var eventEmitter = function () {
        var eventTofunctionMapper =  {};
        return {
            subscribe: function (eventType, callback) {
                eventTofunctionMapper[eventType] = eventTofunctionMapper[eventType] || [];
                eventTofunctionMapper[eventType].push(callback);
            },
            
            notifyAll: function (eventType) {
                var callbacks = eventTofunctionMapper[eventType];
                if (callbacks) {
                    callbacks.forEach(function(callback) {
                        callback();
                    });
                }
            }
        }
    }();
    global.subscribe = eventEmitter.subscribe;
    global.notifyAll = eventEmitter.notifyAll;
})(this);
​
subscribe("hey",function(){
    console.log("judgeme");
})
subscribe("hey",function(){
    console.log("bye");
})
function assad() {
    console.log("I am assad");
}
subscribe("hey",assad);
subscribe("coco",assad);
notifyAll("hey");
notifyAll("coco");




///////////////////////////  Version 2/////////////////////////// 
function Emitter(){
	this.events = {};
}
​
Emitter.prototype.on(type, listener){
	this.events[type] = this.events[type] || [];
	this.events[type].push(listener);
}
​
Emitter.prototype.emit= function(type){
	if(this.events[type]){
		this.events[type].forEach(function(listener)){
			//Invoke it
			listener();
		}
	}
}
​
​
// Code use
var emitter = new Emitter();
emitter.on("java", function(){
	console.log("I like it");
});
emitter.emit("java");
