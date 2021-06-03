class Parent 
    def initialize()
        puts "Is too!"
    end


    private
    def a_method()
        puts "Is not!"
    end
end

class Parent2 < Parent 
    def initialize()
        super
    end

    def another_method()
        a_method()
    end
end

Parent2.new().a_method() # Doesn't work! a_method in Parent was marked private!