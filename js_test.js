function outerFunction(arg){

    function innerFunction(){ //'arg' is not passed into the inner function
        console.log(arg);
        //We can still print arg within the inner function's scope.
    }

    innerFunction();
}

//Invoke the outer_function, passing in a string:
outerFunction("This is Closure!"); //=> This is Closure!