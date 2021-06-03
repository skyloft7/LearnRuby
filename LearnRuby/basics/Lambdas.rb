def i_need_2_lambdas(lambda_1, lambda_2)
    lambda_1.call()
    lambda_2.call()
end

lambda_1 = -> { puts "Hey, I'm in Lambda 1!"}
lambda_2 = -> { puts "Hellllo, I'm in 2!"}

i_need_2_lambdas(lambda_1, lambda_2)


