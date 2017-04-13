#Array to Hash

animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]
hash = Hash[*animals.flatten]

puts hash

#Leap Years
#1. Accept 2 Arguments
#2. Make an array of all the Years
#3. Iterate through each year and see if it's divisible by 4
#4. If it's divisible by 100 & 400 its a leap year
#5. If it's divisible by 100 alone it is not a leap year
def find_leap_years(start_year, end_year)
  leap_years = []
  (start_year..end_year).each do |year|
    if year % 4 == 0
      leap_years << year
    elsif year & 400 == 0 && year % 100 != 0
      leap_years << year
    end
  end
  leap_years
end

puts find_leap_years(2000, 2012)

# #Find the Longest Word
# def find_longest(longest)
#   longest = {}
#   longest.inject do |memo, word|
#     memo.length > word.length ? memo : word
# end
#
# colours = %w(red blue green yellow chartreuse orange periwinkle tomato cobalt)
#
# puts colours.find_longest
