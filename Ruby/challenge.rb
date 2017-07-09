
filename = 'object_70166038782960.txt'

file = File.open(filename, 'w')
file << 'Some contains'
file.close

## When using a block the file is automatically closed

File.open(filename, 'w') do |f|
  f << 'Some contains'
end

## Translate a hash to an array

hash = { :names => ['Steven', 'Reina', 'Ryan'], :ages => [24, 24, 20] }
array = hash.to_a

## Iterating a hash

hash.each do |key, value|
  puts "The #{key} are: #{value}"
end

## Common Ruby data structures

## Array
array = [1, 2, 3, 4]

## Hash
hash = { :phone_numbers => [800-555-555, 800-555-0000] }

## Queue
queue = Queue.new
queue << 1
queue << 2
queue.pop

## Set
require 'set'
set = Set.new([1, 2, 3])
new_set = [1, 2, 3].to_s
set.add(5)

## Challenge

## Print array of 16 numbers split into groups of 4

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

holder = []
numbers.each do |i|
  holder << i
  if holder.count == 4
    puts "#{holder}"
    holder = []
  end
end

numbers.each_slice(4) { |s| puts "#{s}" }