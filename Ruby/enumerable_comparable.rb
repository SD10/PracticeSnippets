result = 'begin' <=> 'end'
puts "Result: #{result}"

result = 'end' <=> 'begin'
puts "Result: #{result}"

result = 'same' <=> 'same'
puts "Result: #{result}"

## Since SpaceShip is implemented you can sort & compute min/max

### Consider creating this operator in Swift for fun

a = [5, 4, 3, 2, 1]
puts "Unsorted: #{a}"
a = a.sort
puts "Sorted: #{a}"

### Like default implementation of sort on Int in Swift

bool = a.any? {|i| i > 6}
puts "#{bool}"
bool = a.any? {|i| i > 4}
puts "#{bool}"

## Like contains with a condition

bool = a.all? {|i| i > 4}
puts "#{bool}"
bool = a.all? {|i| i > 0}
puts "#{bool}"

## Like contains all with a condition

collected = a.collect {|i| i * 2}
puts "#{collected}"

## Like map, don't see how its different really

filtered = a.select {|i| i % 2 == 0}
puts "#{filtered}"
a.find_all {|i| i % 2 == 1}

## Like filter with condition

filtered = a.select {|i| i % 2 != 0}
puts "#{filtered}"

puts "The max element is: #{a.max}"
## Max element

bool = a.member?(2)
puts "#{bool}"

## Contains element

values = [1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
sum = values.inject(0) {|sum, i| sum + i }
puts "The sum is: #{sum}"
## This is just like reduce

values.inject {|sum, i| sum + i}
## No initial value needed?
## Looks like it will just use the first value in the collection

values.inject(0) do |sum, i|
  puts "The sum is: #{sum}... New total is: #{sum + i}"
  sum + i
end
