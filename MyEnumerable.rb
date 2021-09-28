module MyEnumerable
  def all?
    self.each do |element|
      check = yield(element)
      false unless check
    end
    true
  end

  def any?
    self.each do |element|
      check = yield(element)
      if check
        true
      end
    end
    false
  end

end