# Your Favorite and Mine, Fibonacci!
def fibo_finder(n)
  
first, second = 0, 1

	n.times {
  		first, second = second, first + second
	}

first

end