limit = 5
#2 Different ways to find the sum of all even numbers until limit

#1st Method
total_1 = 0
for n in 0..limit do 
    if n % 2 == 0
        total_1 += n
    end
end

#2nd Method
total_2 = 0
loop do 
    total_2 += total_2 + 2 

    if total_2 >= limit
        break
    end
end

puts total_2 == total_1
puts "The result was #{total_1} and #{total_2}"