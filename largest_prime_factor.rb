# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def find_largest_prime_factor(number)
    i = 2
    while i * i <= number
        if number % i == 0
            number /= i
        else
            i += 1
        end
    end
    number
end
  
number = 600851475143
largest_prime_factor = find_largest_prime_factor(number)
puts "En büyük asal çarpan: #{largest_prime_factor}"