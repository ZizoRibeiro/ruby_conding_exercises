# convert to a string
p (2 ** 1000).to_s

#convert to an Array
p (2 ** 1000).to_s.split(//)

#convert to an integer
p (2 ** 1000).to_s.split(//).map(&:to_i)

# use the inject method to give the sum
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)
