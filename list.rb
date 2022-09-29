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

list = MyList.new(1, 2, 3, 4)
# test all_method
p(list.all? { |e| e < 5 })
# true
p(list.all? { |e| e > 5 })
# false
p(list.any? { |e| e == 2 })
# true
p(list.any? { |e| e == 5 })
# false
p(list.filter(&:even?))
# [2, 4]
