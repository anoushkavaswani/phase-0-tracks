# def method(x)
# 	puts x*2
# 	yield("hello", "yes")
# end

# method(3) { |x, y| puts "awesome!" }

#release 1

#declare an array
fruits = ["apple", "orange", "grape"]
p fruits

fruits.each do |fruit|
	puts fruit
end

fruits.map! do |fruit|
	fruit + "s"
end

p fruits


#declare a hash
vegetables = {"pea" => 'healthy', "potato" => 'unhealthy', "spinach" => 'healthy'}
p vegetables

vegetables.each do |veggie, healthy|
	puts "the #{veggie} is #{healthy}"
end

#release 2

#task 1
numbers = [1, 3, 5, 7, 9]
p numbers

numbers.delete_if do |number|
	number <5
end

p numbers

ranking = {"Anna" => 1, "Brian" => 2, "Ben" => 6, "Annie" => 8}
p ranking

ranking.delete_if do |name, rank|
	rank <5
end

p ranking

#task 2
numbers = [1, 3, 5, 7, 9]
p numbers

new_numbers = numbers.reject do |number|
	number <5
end

p new_numbers
p numbers

ranking = {"Anna" => 1, "Brian" => 2, "Ben" => 6, "Annie" => 8}
p ranking

new_rank = ranking.reject do |name, rank|
	rank <5
end

p new_rank
p ranking

#task 3
numbers = [1, 3, 5, 7, 9]
p numbers

new_numbers = numbers.select do |number|
	number >5
end

p new_numbers
p numbers

ranking = {"Anna" => 1, "Brian" => 2, "Ben" => 6, "Annie" => 8}
p ranking

new_rank = ranking.select do |name, rank|
	rank >5
end

p new_rank
p ranking

puts "task 4"

numbers = [1, 3, 5, 7, 9]
p numbers

numbers.delete_if do |number|
	number<5
end

p numbers


