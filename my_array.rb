class MyArray
	attr_accessor :array

	def initialize(arr = [])
		@array = arr
	end

	def size
		array.size
	end

	def reverse
		array.reverse
	end

	def max
		array.max
	end

	def min
		array.min
	end

	def desc
		array.sort
	end

	def asc
		array.sort.reverse
	end

	def odd
		array.find_all { |item| (item % 2).nonzero? }
	end

	def multiple_to_three
		array.find_all	{ |item| (item % 3).zero? }
	end

	def uniq
		array.uniq
	end

	def devide_on_ten
		array.map { |item| item / 10.0 }
	end

	def chars
		abc = (:a..:z).to_a
		abc.values_at(*@array)
	end

	def switch
		min = array.min
		max = array.max
		array[min], array[max] = array[max], array[min]
	end

	def before_min
		array[0...array.index(array.min)]
	end

	def three_smallest
		@array.sort[0..2]
	end
end