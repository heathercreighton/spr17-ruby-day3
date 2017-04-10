# # 1. Create a program that will take two numbers and then gives the user a choice of what kind of arthimetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!

# def add(num1, num2)
# 	num1 + num2
# end	

# def subtract(num1, num2)
# 	num1 - num2
# end

# def multiply(num1, num2)
# 	num1 * num2
# end

# def divide(num1, num2)
# 	num1 / num2
# end



# puts "Give me a number:"
# digit1 = gets.chomp.to_i
# puts "Give me another number:"
# digit2 = gets.chomp.to_i
# puts "Would you like to add, subtract, multiply or divide the numbers?"
# operation = gets.chomp.downcase


# case operation
# 	when "add"
# 		puts "The addition of the #{digit1} and #{digit2} is #{add(digit1, digit2)}."
# 	when "subtract"
# 		puts "The subtraction of #{digit1} and #{digit2} is #{subtract(digit1, digit2)}."	
# 	when "multiply"
# 		puts "The multiplication of #{digit1} and #{digit2} is #{multiply(digit1, digit2)}."
# 	when "divide"
# 		puts "The division of #{digit1} and #{digit2} is #{divide(digit1, digit2)}."
# 	else
# 		puts "That is not an option. Sorry"
# end					




# 2. The Remainder Challenge!

# In Ruby 6 / 4 == 1.

# But what if we want the remainder also?

# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.

# If either of the numbers is not an Integer, then don't accept the number and ask again.

# Do not accept zero (0) as a number.

# Example 1

# def integer_check(num1, num2)
# 	if num1 == 0 ||	num2 ==0 
# 		return false
# 	elsif (num1.is_a? Integer) && (num2.is_a? Integer)
# 		return true
# 	else
# 		return false	
# 	end	
# end	


# def get_remainder(num1,num2)
# 	quotient = num1/num2
# 	remainder = num1%num2

# 	if remainder !=0
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient} with a remainder of #{remainder}."
# 	else
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient}"
# 	end		

# end	


# puts "Give me a number that is not zero:"
# digit1 = gets.chomp.to_i
# puts "Give me another number that is not zero:"
# digit2 = gets.chomp.to_i


# user_input = integer_check(digit1, digit2)

# if user_input == false
# 	puts "Sorry you have entered an unexceptable entry."
# else
# 	get_remainder(digit1, digit2)
# end		



# # Example 2 - with more checks
# def integer_check(num)
# 		if num != 0



# 		 if num.is_a? Integer 
# 		 	return num
# 		 else
# 		 	puts "That number is not an integer.  Try again"
# 		 	num = gets.chomp.to_i
# 		 	integer_check(num)
# 		 	return num
# 		 end	

# 		else
# 		puts "Zero not accepted.  Try again:"
# 		num = gets.chomp.to_i
# 		 	integer_check(num)
# 		 	return num
# 		 end	
# end



# def get_remainder(num1,num2)
# 	quotient = num1/num2
# 	remainder = num1%num2

# 	if remainder !=0
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient} with a remainder of #{remainder}."
# 	else
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient}"
# 	end		

# end	


# puts "Give me any integer, except 0"
# digit1 = gets.chomp.to_i
# new_dig1 = integer_check(digit1)



# puts "Give me another integer, except 0"
# digit2 = gets.chomp.to_i
# new_dig2 = integer_check(digit2)


# get_remainder(new_dig1, new_dig2)





# 3. Build-a-Quiz

# Build a quiz program that gets a few inputs from the user including:

# number of questions
# questions
# answers
# Then clear the screen and begin the quiz. Keep score!

test_hash = {}
def quiz_builder
	new_hash = {}
	puts "How many questions would you like to have in your quiz?"

	num = gets.chomp.to_i

	num.times do 
		puts "What is your question?"
		question = gets.chomp
		puts "What is the answer?"
		answer = gets.chomp.downcase


		new_hash[question] = answer
	end	
	return new_hash
end	

question_hash = quiz_builder
length = question_hash.length


system("clear")

puts "Time for the test! There are #{length} questions."

score = 0 
question_hash.each do |q, a|

	puts "#{q}"
	user = gets.chomp.downcase
	if user == a
			puts "Correct!"
			score += 1
	else
			puts "Sorry, the answer is #{a}"
	end				
end	

puts "Your final score is #{score} out of #{length} questions correct."

