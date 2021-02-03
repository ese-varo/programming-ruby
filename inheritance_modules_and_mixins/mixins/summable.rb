module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

require_relative 'vowel_finder'

puts [ 1, 2, 3, 4, 5 ].sum
puts ('a'..'m').sum

vf = VowelFinder.new("the quick brown fox jumped")
pp vf.inject(:+)
