require_relative './enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&element)
    @list.each(&element)
  end
end
