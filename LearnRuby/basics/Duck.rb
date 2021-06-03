class Duck 
    @age_years = nil
    @number_of_feathers = nil
    @color = nil

    def initialize(age_years = 1, number_of_feathers = 50, color = "yellow")
        @age_years = age_years
        @number_of_feathers = number_of_feathers
        @color = color
    end

    def quack()
        puts "Quack! I'm a #{@color} Duck with #{@number_of_feathers} feathers and I'm #{@age_years} years old!"
    end
end

duck = Duck.new(2, 150, "white")

duck.quack()