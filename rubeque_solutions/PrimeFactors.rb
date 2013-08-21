# Prime Factors (won't work on Rubeque due to Class object)
class Integer
	def prime_factors()
		1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
			f << i unless i == self/i
			f
		end.sort
	end
end

[102, 896680, 42].each {|n| p n.factors}

assert_equal prime_factors(102), [2, 3, 17]
assert_equal prime_factors(896680), [2, 5, 29, 773]
assert_equal prime_factors(42), [2, 3, 7]