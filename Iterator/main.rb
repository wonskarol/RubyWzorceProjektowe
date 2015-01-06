require_relative 'external_iterator'
require_relative 'internal_iterator'

array = ['raz', 2, 3.0]

#Iteratory zewnetrzne
#strona 149
i = ExternalIterator.new(array)
while i.has_next?
  puts "element: #{i.next_item}"
end

j = ExternalIterator.new('abc')
while j.has_next?
  puts "element: #{j.next_item.chr}"
end

#Iteratory wewnetrzne
#strona 152
k = InternalIterator.new(array)
k.for_each_element { |each| puts "element #{each}" }