module MyEnumerable
  def all?
		each do |i|
			return false unless yield(i)
		end
		true
	end

	def any?
		each do |i|
			return false unless yield(i)
		end
		true
	end

	# filter
    
end