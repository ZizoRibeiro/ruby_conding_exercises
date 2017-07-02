# 1 Jan 1900 was a monday
# Thirty days has September, April, June and November
# All the rest have thirty-one
# Saving February alone, which has twenty-eight, rain or shine.
# And on leap years, twenty-nine
# A leap year accurs on any year evenly divisible by 4, but no on a century unless it is divisible by 400

# how many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

# create a variable start_date and set the time to 1901
start_date = Time.local(1901)
p start_date

# create another variable with the end_date
end_date = Time.local(2000, 12, 31)
p end_date

# create a variable sunday_counter
sunday_counter = 0

# add a conditional that says while end_date >= start_date
while end_date >= start_date

  # strftime("%A") method checks the day of the week is Sunday. and the other strftime checks if the day is 01
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"

    # if it is on Sunday and the day is 01 then increment sunday_counter by 01
    sunday_counter += 1
  end
  # now subtracts end_date by one day or 86400 seconds
  end_date -= 86400

end

# finally print sunday counter
p sunday_counter
