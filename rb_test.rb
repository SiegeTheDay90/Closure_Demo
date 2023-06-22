def outer_function(arg)

    def inner_function
        print(arg) #'arg' is not passed into the inner function
        #Raise error because 'arg' is not defined in the inner function
    end

    inner_function()
end

#Invoke the outer_function, passing in a string:
outer_function("THIS IS CLOSURE.") #=> NameError undefined variable 'arg'