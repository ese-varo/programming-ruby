# Add a helper method to the Integer class that generates a stream of integers
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

multiple_of_three = -> n { (n % 3).zero? }
palindrome        = -> n { n = n.to_s; n == n.reverse }

p Integer
    .all
    .select(&multiple_of_three)
    .select(&palindrome)
    .first(10)

# p multiple_of_three.first(10)

# p m3_palindrome.first(10)
