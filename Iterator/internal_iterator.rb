class InternalIterator

  def initialize(array)
    @array = array
  end

  def for_each_element
    i = 0
    while i < @array.length
      yield(@array[i])
      i += 1
    end
  end

end