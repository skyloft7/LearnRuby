class MyClass 
    def method()
        yield(90)
    end
end

method { 
    |a_block_argument| 
    
    puts "Hey! I got a #{a_block_argument}"
}

my_object = MyClass.new()

my_object.method()
