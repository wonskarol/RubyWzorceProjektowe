class BritishTextObject
  attr_reader :string, :size_mm, :colour

  def initialize(string, size_mm, colour)
    @string = string
    @size_mm = size_mm
    @colour = colour
  end

  def override_test
    puts 'I\'m defined in ' + self.class.name + ' class'
  end
end