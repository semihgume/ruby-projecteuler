# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

max = 0

999.downto(100) do |i|
    i.downto(100) do |j|
        number = i * j
        if number <= max
            break
        end
        if number.to_s == number.to_s.reverse
            max = number
        end
    end
end

puts "Answer = #{max}"