require 'humanize'

#first setup the variable
no_space_array, total = [], 0

#create an array from 1 to 1000
(1..1000).to_a

#call map on it and then call the humanize method in each one of the elements, and print the numbers
p (1..1000).to_a.map(&:humanize)

#now , iterate in every element and delete the space " ", and dashes "-"
p (1..1000).to_a.map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-")}

# to test , lets print no_space_array
p no_space_array

# iterate over each element and sum all
(1..1000).to_a.map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-")}.each { |element| total += element.length }

# print the total
p total
