# What is Closure?
`Closure` describes a behavior of JavaScript that does not exist in Ruby.
In both languages, variables have a `scope` in which they can be used, with some differences.

# Test Files
Run these test files in your terminal. Note their behavior then read the Ruby and JavaScript sections below.\
`ruby rb_test.rb`\
`node js_test.js`

# Ruby
First let's show how Ruby functions do not have `closure`; they do not have access to variables unless they are passed in as arguments or defined inside the function.
```ruby
def outer_function(arg)

    def inner_function
        print(arg) #'arg' is not passed into the inner function
        #Raise error because 'arg' is not defined in the inner function
    end

    inner_function()
end

#Invoke the outer_function, passing in a string:
outer_function("THIS IS CLOSURE.") #=> NameError undefined variable 'arg'
```
This code raises an error and does not print `THIS IS CLOSURE`. Can you think of a way to fix this ruby code?

# JavaScript
Now, let's see how JavaScript handles this:
```javascript
function outer_function(arg){

    function inner_function(){ //'arg' is not passed into the inner function
        console.log(arg) 
        //We can still print arg within the inner function's scope.
    }

    inner_function();
}

//Invoke the outer_function, passing in a string:
outer_function("This is Closure!"); //=> This is Closure!
```
This code does not throw an error. Why? Because `arg` was passed into `outer_function` as an argument. This means that any functions defined within `outer_function` will also have access to `arg`.\
This would also apply to any variable defined in the `outer_function`, not just arguments that were passed in.