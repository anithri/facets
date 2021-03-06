class Array

  # Returns elements from `index` until the end.
  #
  #   %w{W o r l d}.from(3)  #=> ["l", "d"]
  #   %w{W o r l d}.from(9)  #=> []
  #
  # TODO: Should #from and #thru be more liberal than #slice
  #       and always return an empty array when the index
  #       is out of bounds (instead of nil)?
  #
  def from(index)
    #return [] if index <= size
    self[index..-1]
  end unless method_defined?(:from)

  # Fetch values from a start index thru an end index.
  #
  #   [1,2,3,4,5].thru(2)  #=> [1,2,3]
  #   [1,2,3,4,5].thru(4)  #=> [1,2,3,4,5]
  #
  #   [1,2,3,4,5].thru(0,2)  #=> [1,2,3]
  #   [1,2,3,4,5].thru(2,4)  #=> [3,4,5]
  #
  def thru(from, to=nil)
    from, to = 0, from unless to
    self[from..to]
  end unless method_defined?(:thru)

end

