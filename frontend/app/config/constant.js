/*
	You need to be able access that value during the configuration phase. (using .config())
*/

mod.constant("myValue", 10);
mod.config(function(myValue) {
    console.log(myValue);
});
        