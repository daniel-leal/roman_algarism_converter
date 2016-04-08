class AlgarismConverter

	attr_reader :symbol_table

	def initialize
		@symbol_table = {
			I: 1,
			V: 5,
			X: 10,
			L: 50,
			C: 100,
			D: 500,
			M: 1000
		}	
	end

	def converter(symbol)
		acc = 0
		last_neighbor = 0

		(symbol.length - 1).downto(0) do |i|
			multiplier = 1
			current = @symbol_table[symbol[i].to_sym]

			multiplier = -1 if current < last_neighbor

			acc += current * multiplier
			last_neighbor = current
		end

		acc
	end

end