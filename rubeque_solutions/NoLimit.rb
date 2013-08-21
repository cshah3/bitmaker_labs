# No Limit
split(',', -1)

assert_equal ["1", "2", "3"], "1,2,3".___
assert_equal ["", "", "1", "2", "3"], ",,1,2,3".___
assert_equal ["1", "2", "3", "", ""], "1,2,3,,".___