require_relative 'bank_account'
require_relative 'account_proxy'
require_relative 'rebuild_account_protection_proxy'
require_relative 'virtual_proxy'

# wykorzystanie method_missing do tworzenia posrednikow
# strona 204
ap = AccountProxy.new (BankAccount.new(100))
ap.deposit(25)
ap.withdraw(50)
puts "saldo wynosi: #{ap.balance}"

# przebudowany pośrednik ochrony
# strona 205
account = BankAccount.new(-99)
protection = RebuildAccountProtectionProxy.new(account, "Karol Wons")
puts protection.balance

# opawkowanie stringa przebudowanym posrednikiem ochorny
# strona 205
s = RebuildAccountProtectionProxy.new("jakis lancuch", "Karol Wons")
puts "długość łańucha wynosi #{s.length}"

# posrednik uniwesalny
array = VirtualProxy.new { Array.new }
array << 'pada'
array << 'snieg'

puts (array.inspect)
