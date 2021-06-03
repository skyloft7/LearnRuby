advices = ["Tell your boss what you really think", "Those Jeans are too big",
  "That haircut really isn't working for you", "You've gotta shave",
   "Wear 2 different socks, It's in trend.", 
  "Come on, we both know this one",
  "Really?",
  
]
puts "Welcome to the Random Advice CLI :D\n"
puts "Type 'advice' to get some advice! or 'help' for help"
loop do 
    print "> "
    command = gets.strip
    if command == "advice"
        random_index = rand(advices.length)
        puts advices.at(random_index)
    end
    if command == "teach"
        puts "Enter your new advice!"
        new_advice = gets.strip
        advices.push(new_advice)
        puts "Advice recorded!"
    end
    if command == "help"
        puts "advice"
        puts "teach"
        puts "help"
        puts "exit"
        puts "about"
    end
    if command == "exit"
        abort("Goodbye :)")
    end
    if command == "about"
        puts "A fun little program made in Ruby :D"
    end
end

