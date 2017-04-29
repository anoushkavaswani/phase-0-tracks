def method(x)
	puts x*2
	yield("hello", "yes")
end

method(3) { |x, y| puts "awesome!" }