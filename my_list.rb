require_relative './my_enumerable'

class MyList
  def initialize(*list)
    @list = []
    list.each { |item| @list << item }
  end

  include MyEnumerable

  def each()
    return to_enum(:each) unless block_given?

    @list.length.times do |i|
      yield(@list[i])
    end
  end
end

# Testing the methods

list = MyList.new(1, 2, 3, 4)

puts "All items < 5: #{list.all? { |e| e < 5 }}"
puts "All items > 5: #{list.all? { |e| e > 5 }}"
puts "List contains 2: #{list.any? { |e| e == 2 }}"
puts "List contains 5: #{list.any? { |e| e == 5 }}"
puts "Even numbers: #{list.filter(&:even?)}"
