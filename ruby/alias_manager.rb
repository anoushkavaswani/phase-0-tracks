user_entries = Hash.new

loop do

puts "What is your name?"
entry= gets.chomp

name = entry.split(' ')

first_name=name[0]
p first_name

last_name=name[1]
p last_name

swap_name = "#{last_name} #{first_name}"
p swap_name

characters = swap_name.downcase.split('')
p characters

vowels = "aeiou"

characters.map! do |character|
	if character == "u"
		character = "a"
	elsif vowels.include?(character)
		number = vowels.index(character)+1
		character = vowels[number]
	else
		character
	end
end

consonants = "bcdfghjklmnpqrstvwxyz"

characters.map! do |character|
	if character == "z"
		character = "b"
	elsif consonants.include?(character)
		number = consonants.index(character)+1
		character = consonants[number]
	else
		character
	end
end

p characters

lowercase_new_name=characters.join('')
p lowercase_new_name

split_new_name = lowercase_new_name.split(" ")
p split_new_name

split_new_name.map! do |word|
	word.capitalize
end

new_first_name=split_new_name[0]

new_last_name=split_new_name[1]

new_name = "#{new_last_name} #{new_first_name}"
p new_name

user_entries.store(entry, new_name)

break if entry == "quit"
end

user_entries.each do |real_name, fake_name|
	puts "#{real_name} is also know as #{fake_name}"
end




