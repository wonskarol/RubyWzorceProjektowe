require_relative 'bank_account'
require_relative 'bank_account_proxy'
require_relative 'account_protection_proxy'
require_relative 'virtual_account_proxy'
require_relative 'account_proxy'

# strona 195
account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)

# pośrednik ochrony
# strona 196
protection = AccountProtectionProxy.new(account, "Karol Wons")
puts protection.balance

# pośrednik wirtualny, lazy initialization
# strona 200
account = VirtualAccountProxy.new { BankAccount.new(-100)}
puts account.balance