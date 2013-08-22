# Happy Numbers
def happy_number?(num, history=[])

  digit = num.to_s.split('').map { |x| x.to_i }
	set = digit.collect { |x| x ** 2 }
	sum = set.inject { |sum, x| sum + x}

	sum == 1 or !history.include?(sum) && happy_number?(sum, history.concat([sum]))

end

assert_equal happy_number?(7), true
 assert_equal happy_number?(986543210), true
 assert_equal happy_number?(2), false
 assert_equal happy_number?(189), false