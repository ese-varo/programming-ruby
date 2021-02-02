def n_times(thing)
  lambda { |n| thing * n }
end

p1 = n_times(23)
puts p1.call(3)
puts p1.call(4)
p2 = n_times("Hello ")
puts p2.call(3)

def power_proc_generator
  value = 1
  lambda { value += value }
end

power_proc = power_proc_generator

puts power_proc.call
puts power_proc.call
puts power_proc.call

# An alternative notation for creating block objects 

proc1 = -> arg { puts "In proc1 with #{arg}" }
proc2 = -> arg1, arg2 { puts "In proc2 with #{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) { puts "In proc3 with #{arg1} and #{arg2}" }

proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"
