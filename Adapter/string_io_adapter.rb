class StringIOAdapter
  def initialize(string)
    @string = string
    @position = 0
  end

  def getc
    raise EOFError if @position >= @string.length
    ch = @string[@position]
    @position+=1
    return ch
  end

  def eof?
    return @position >= @string.length
  end
end