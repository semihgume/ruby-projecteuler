# By listing the first six prime numbers: 2, 3, 5, 7, 11 and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

def is_prime?(number)
    return false if number < 2
  
    (2..Math.sqrt(number).to_i).each do |i|
        return false if number % i == 0
    end
    return true
end
  
def find_prime_number(n)
    prime_numbers = []
    number = 2
  
    while prime_numbers.length < n
        prime_numbers << number if is_prime?(number)
        number += 1
    end
    return prime_numbers.last
end
  
n = 10001
result = find_prime_number(n)
puts "#{n}th prime number = #{result}"