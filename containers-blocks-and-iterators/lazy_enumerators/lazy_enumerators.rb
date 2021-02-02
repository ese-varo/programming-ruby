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

multiple_of_three = Integer
        .all
        .select { |i| (i % 3).zero? }

p multiple_of_three.first(10)

m3_palindrome = multiple_of_three
        .select { |i| palindrome?(i) }

p m3_palindrome.first(10)
