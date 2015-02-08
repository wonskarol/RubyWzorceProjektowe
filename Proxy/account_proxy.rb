class AccountProxy
  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(name, *args)
    puts "Delegacja komunikatu #{name} do tematu."
    @subject.send(name, *args)
  end
end