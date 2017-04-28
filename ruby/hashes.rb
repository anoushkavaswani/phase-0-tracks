#create a new hash
design = Hash.new

#ask the user for data
puts "What is your name"
design[:name] = gets.chomp

puts "What is your age"
design[:age] = gets.chomp.to_i

puts "How many children do you have?"
design[:children] = gets.chomp.to_i

puts "What theme do you want?"
design[:theme] = gets.chomp

puts "Will you have movers (y/n)?"
design[:movers] = gets.chomp

if design[:movers] == "y"
	design[:movers] = true
else 
	design[:movers] = false
end

p design

loop do
	puts "is this information correct? (y/n)"
	decision = gets.chomp
	break if decision == "y"
	puts "what input do you want to update?"
	entry = gets.chomp
	puts "What do you want to update it to?"
	info = gets.chomp
	design[entry.to_sym] = info
	p design
end

Puts "Thank you for filling out the form!"