require_relative './MyEnumerable'
class MyList
  include My_enumerable
  def initialize(*list)
    @list = list
  end

  def each(&element)
    @list.each(&element)
  end
end
