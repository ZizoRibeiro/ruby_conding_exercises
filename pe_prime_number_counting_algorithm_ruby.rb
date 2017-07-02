require 'prime'

prime_array = Prime.take_while { |p| p < 10 }

total_count = prime_array.inject { |sum, x| sum + x }

p total_count
