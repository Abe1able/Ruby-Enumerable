module MyEnumerable
  def all?
    each do |i|
      return false unless yield(i)
    end
    true
  end

  def any?
    each do |i|
      return true if yield(i)
    end
    false
  end

  def filter
    filtered = []
    each do |i|
      filtered.push(i) if yield(i)
    end
    filtered
  end
end
