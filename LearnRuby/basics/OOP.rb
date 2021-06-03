$global_variable = 3

class Animal
    @instance_variable = 5
    #Optional Argument how_many_times with default value 1
    def make_noise(how_many_times = 1)
        how_many_times.times do 
            puts "An animal noise"
            puts "$global_variable = #{$global_variable}"
            puts "#{@instance_variable}"
        end
    end
end
#Duck inherits from Animal
class Duck < Animal
    def make_noise(how_many_times = 1)
        super #calls make_noise from Animal Superclass
        how_many_times.times do 
            puts "Quack quack quack!!!!"
            puts "$global_variable = #{$global_variable}"

        end
    end
end

class Horse < Animal
    def make_noise(how_many_times = 1)
        #how_many_times gets automatically passed to super
        super #calls make_noise from Animal Superclass
    end
end

def needs_an_animal(animal)
    animal.make_noise(5)
end

duck = Duck.new()
duck.make_noise(2)

needs_an_animal(Horse.new())
puts "$global_variable = #{$global_variable}"

needs_an_animal("Yikes!") #This won't work



