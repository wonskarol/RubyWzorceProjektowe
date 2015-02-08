require 'etc'

class RebuildAccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Błąd dostępu: #{Etc.getlogin} nie ma dostępu do tego rachunku."
    end
  end
end