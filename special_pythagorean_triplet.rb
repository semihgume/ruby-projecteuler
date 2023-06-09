# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2.
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

def find_pythagorean_triplet(sum)
    (1..sum/3).each do |a|
        (a+1..sum/2).each do |b|
            c = sum - a - b
            if a**2 + b**2 == c**2
                return [a, b, c]
            end
        end
    end
end
  
sum = 1000
sides = find_pythagorean_triplet(sum)
result = sides.inject(:*)

puts "Üçgenin kenarları: #{sides} ve çarpımı = #{result}"