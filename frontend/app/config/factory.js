/*
	The value you are providing needs to be calculated based on other data.
*/

mod.factory("myProvider", function() {
    console.log("Factory function called.");
    return new function() { // INLINED our object constructor
        this.getValue = function() {
            return "My Value";
        };
    };
});