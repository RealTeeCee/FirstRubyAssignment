require 'date'

# Define a method to get the number of days in a given month and year
def days_in_month(month, year)
    Date.new(year, month, -1).day
end

# Get the current month and year
now = Time.now
month = now.month
year = now.year

# Get number of days in current month
days = days_in_month(month, year)

# Print the calendar
(1..days).each do |day|
  date = Date.new(year, month, day)


  print date.strftime("Day %-d:").rjust(3)
  print " "
  if date.to_date == now.to_date  
    print date.strftime("%A, %B %-d, %Y") + " <----- Today"
  else
    print date.strftime("%A, %B %-d, %Y")
  end
  print "\n"
end