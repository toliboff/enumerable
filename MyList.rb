require_relative "MyEnumerable.rb"


class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
    self
  end
end


list = MyList.new(1,2,3,4,5);
puts list.all?{|e| e > 1}

puts list.any? {|e| e == 2}

print list.filter {|e| e.even?}