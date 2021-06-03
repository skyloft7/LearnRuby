class MyClass 
    def method()
        yield(90)
    end
end

my_object = MyClass.new()

#Whatever comes between the parentheses will be executed when yield is called 
#inside method()

#This is like an anonymous method in Java, i.e new ActionListener() {}
my_object.method { |a_block_argument| 
    puts "Hey! I got a #{a_block_argument}"
}
