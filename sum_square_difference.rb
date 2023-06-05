# The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385.
# The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)^2 = 55^2 = 3025.
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sum_of_the_squares = (1..100).map { |i| i * i }.sum
square_of_the_sum = (1..100).sum
diff = (square_of_the_sum * square_of_the_sum) - sum_of_the_squares

puts "Diff = #{diff}"