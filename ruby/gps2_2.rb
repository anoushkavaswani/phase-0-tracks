# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string
  # add the words from string as keys to the hash
  # set default quantity as one for each
  # print the list to the console [can you use one of your other methods here?] - key tag before creating the print method
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add something to the hash
# output: hash

# Method to remove an item from the list
# input: hash, string we want to remove
# steps: remove something from the hash
# output:hash

# Method to update the quantity of an item
# input: hash, string we want to add
# steps: remove string from the hash
# output: output

# Method to print a list and make it look pretty
# input: hash
# steps: each do
# output: string

groceries = "carrots apples cereal pizza"

def grocery(groceries)
	list = Hash.new
	grocery_entry = groceries.split(" ")

	grocery_entry.each { |item| list[item] = 1 }

	return list

end

# def add(list, thing, quantity)
# 	list[thing] = quantity
# end

def remove(list, thing)
	list.delete(thing)
end

def update(list, thing, quantity=1)
	list[thing] = quantity
end

def output(list)
	list.each { |item, quantity| puts "#{quantity} #{item}" }
end

grocery_list = grocery(groceries)
update(grocery_list, "oranges", 20)
remove(grocery_list, "carrots")
update(grocery_list, "pizza", 2)
output(grocery_list)