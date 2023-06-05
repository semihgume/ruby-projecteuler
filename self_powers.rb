# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

sum = 0
(1..1000).each do |i|
    sum += i**i 
end

puts "Answer = #{sum.to_s[-10, 10]}"