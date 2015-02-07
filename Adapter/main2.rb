#strona 186
#otwieranie istniejacej klasy i dodanie nowych metod
require 'british_text_object'

class BritishTextObject
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
