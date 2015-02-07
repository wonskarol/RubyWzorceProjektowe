# strona 187
# modyfikowanie istniejacych obiektow

require_relative 'british_text_object'

bto = BritishTextObject.new('witaj', 50.8, :blue)

class << bto
  def text
    return string
  end

  def size_inches
    return size_mm / 25.4
  end

  def color
    return colour
  end
end

# inny sposob na to samo
# def bto.text
#   return string
# end
#
# def bto.size_inches
#   return size_mm / 25.4
# end
#
# def bto.color
#   return colour
# end

# pokaz wszystkie metody singletonowe
bto.singleton_methods.each { |method| puts method }

class << bto
  def override_test
    puts 'I\'m added to ' + self.class.name + ' class'
  end
end

bto.override_test

bto.singleton_methods.each { |method| puts method }
