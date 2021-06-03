random_number = rand(10)
tries_remaining = 3
for i in 0..2 do

    if gets.to_i == random_number
        abort "Hooray! You win :)"
    else 
        tries_remaining -= 1
        if tries_remaining == 0
            abort ":( You ran out of tries! The Number was #{random_number}"
            
        else
            puts "OOF. Try Again"
        end
    end

end