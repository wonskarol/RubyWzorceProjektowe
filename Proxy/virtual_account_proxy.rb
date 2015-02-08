require_relative 'bank_account'

class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def deposit(amount)
    s = subject
    s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    s.withdraw(amount)
  end

  def balance
    s = subject
    return s.balance
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end