# def add_some_numbers
# 	pop = 3 + 5
# end	

# puts add_some_numbers

# answer = 2 + add_some_numbers
# puts answer

# def add_some_numbers(num1, num2)
# 	pop = num1 + num2
# end	


# puts "Give me a number"
# digit1 = gets.chomp.to_i
# puts "Give me another number"
# digit2 = gets.chomp.to_i



# puts add_some_numbers(digit1, digit2)

# puts add_some_numbers(3, 7)


# #Write a method to convert weight to kilos
# def weight_to_kilos(weight)
# 	kilos = weight/2.20
# end

# puts "What is your weight?"
# lbs = gets.chomp.to_i
# puts weight_to_kilos(lbs)	

# puts "Your weight in kilos is #{weight_to_kilos(lbs)}."


#Ask for a string and returns the length
def string_length(string)
	length = string.length
end	

def string_reverse(string)
	reverse = string.reverse
end	

puts "Give me a string:"
user = gets.chomp.downcase

puts "Your string is #{string_length(user)} long."
puts "Your string in reverse is #{string_reverse(user)}."



