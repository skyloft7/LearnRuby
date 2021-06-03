list_1 = ["web-based", "distributed", "remote", "accessible"]
list_2 = ["multi-client", "open-ended", "determined", "figurative"]
list_3 = ["portal", "backend", "processor", "system"]

puts "Wanna sound like those cool guys in Marketing? Type 'pitch' to try it out!"
loop do

    

    print "$ "
    command = gets

    if command == "pitch\n"
        rand_1 = rand(list_1.length)
        rand_2 = rand(list_2.length)
        rand_3 = rand(list_3.length)
        puts "What we need is a #{list_1.at(rand_1)} #{list_2.at(rand_2)} #{list_3.at(rand_3)}"
    else
        puts "Invalid Command, did you mean 'pitch'?"
    end


end
