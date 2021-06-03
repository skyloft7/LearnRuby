#This is a single line Comment

=begin 

This is a
 multi-line comment

=end

class MySuperAwesomeClass
    def initialize(foo)
        puts foo
    end

    def my_super_awesome_method
        puts "This is so super mega ultra extra awesome!"
    end

    def my_super_awesome_method_with_args(foo)
        puts foo
    end
end

my_string = "Some Text I have"
my_int = 2006
$my_global_variable = nil #Kinda like Null in Java

print my_string
print my_int

puts my_string
puts my_int

my_super_awesome_object = MySuperAwesomeClass.new(9)

3.times do 
    puts "This will be done 3 times"
    my_super_awesome_object.my_super_awesome_method
    my_super_awesome_object.my_super_awesome_method_with_args("some super awesome text")
end

index = 0

while index < 5 do
    index+=1
    puts "This will be done 5 times in a while loop"
end

for a in 0..5 do 
    puts "This will be done 6 times in a for loop"
end

a_really_epic_array = ["Epic", "Awesome", "Nice"]

for e in a_really_epic_array do
    puts e
end

i = 1

until i == 10
    i+=1
    puts "i will grow until it is 10"
end

unless 1 == 0
    puts "unless is like an opposite if"
else 
    puts "Well, that was awkward"
end
puts "type your name"
puts "hello #{
    gets
    
}"

