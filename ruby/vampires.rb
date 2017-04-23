puts "how many employees will be processed?"
employees=gets.chomp.to_i
i = 1

while i <= employees

puts "What is your name?"
name=gets.chomp

if name=="Drake Cula"
	name_check=false
elsif name=="Tu Fang"
	name_check=false
else
	name_check==true
end

puts "name any allergies. type done when finished"

while allergies = gets.chomp
    break if (allergies == "done")
end

puts "How old are you?"
age=gets.chomp.to_i

puts "What year were you born?"
year=gets.chomp.to_i

age_test=2017-year

if age_test==age
	age_check=true
else
	age_check=false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
bread=gets.chomp

if bread=="y"
	bread_check=true
else
	bread_check=false
end


puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance=gets.chomp

if insurance=="y"
	insurance_check=true
else
	insurance_check=false
end

if name_check==false
	result = "Definitely a vampire."
elsif !age_check&&!bread_check&&!insurance_check==true
	result = "Almost certainly a vampire."
elsif !age_check && (bread_check||insurance_check)==true
	result = "Probably a vampire"
elsif age_check && (bread_check||insurance_check)==true
	result = "Probably not a vampire"
else
	result = "Results inconclusive"
end

puts result 

i+= 1

end

	