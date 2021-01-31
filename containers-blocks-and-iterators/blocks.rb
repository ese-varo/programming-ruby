def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end
puts call_block { puts 'In the block' }

def who_says_what
  yield('Dave', 'Hello')
  yield('Tyler', 'Goodbye')
end

who_says_what { |person, phrase| puts "#{person} says #{phrase}" }
