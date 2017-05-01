
def search_array(arr, x)
	i= 0

	arr.each do |number|
		if number == x
			return i
		end
		i+=1
	end
	return nil
end

array = [42, 89, 23, 1]
puts search_array(array, 23)

#release 1

def fib(n)
	array = [0, 1]
	(n-2).times do
	x = array[-1] + array[-2]
  	array << x
  end
  	p array
 end

 fib(100)

#release 2

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end