module MyEnumerable
  def all?
    return 'No block given' unless block_given?

    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    collection = []
    each do |element|
      collection << element if yield(element)
    end
    collection
  end
end
