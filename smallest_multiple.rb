# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?

def find_smallest_multiple
    number = 20
    found = false
  
    while !found
        found = (1..20).all? { |i| number % i == 0 }
        number += 20 if !found
    end
    number
end
  
puts "Answer = #{find_smallest_multiple}"