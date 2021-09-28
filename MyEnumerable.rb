module MyEnumerable
  def all?
    self.each do |element|
      check = yield(element)
      false unless check
    end
    true
  end

end