require_relative 'external_iterator'
require_relative 'internal_iterator'
require_relative 'account'
require_relative 'portfolio'

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

#Iteratory wewnetrzne"#{
#strona 152
k = InternalIterator.new(array)
k.for_each_element { |each| puts "element #{each}" }

#Modul Enumerable
#strona 154
account1 = Account.new('Karol', 10000)
account2 = Account.new('Ania', 50000)
account3 = Account.new('Robert', 200)

portfolio = Portfolio.new
portfolio.add_account(account1)
portfolio.add_account(account2)
portfolio.add_account(account3)

puts portfolio.any? {|account| account.balance > 100}
puts portfolio.all? {|account| account.balance > 200}

#Przyklady praktyczne
#strona 158
s = 'Kurkiem kranu kreci kruk, kropla tranu brudzac bruk.'
s.scan(/[Kk]\w+/) { |word| puts "slowo: #{word}"}

h = { :imie => 'Karol', :nazwisko => 'Wons' }
h.each_value { |value| puts value}
h.each_key { |key| puts key}
h.each { |key, value| puts "#{key} #{value}"}

#ObjectSpace.each_object(Integer) { |object| puts "Objekt: #{object}"}

def subclasses_of(superclass)
  subclasses = []
  ObjectSpace.each_object(Class) do |k|
    next if !k.ancestors.include?(superclass) || superclass == k || subclasses.include?(k.to_s)
    subclasses << k.to_s
  end
    subclasses
end

puts subclasses_of(Numeric).inspect
