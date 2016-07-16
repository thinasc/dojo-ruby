class Caixa
	def initialize (value)
		@value = value
		@notas = [10, 20, 50, 100]
		@saque = [0, 0, 0, 0]
	end

	def sacar
		x = @notas.length - 1
		while (@value > 0)
			if @value >= @notas[x]
				@saque[x] += 1
				@value = @value - @notas[x]
			else
				x = x - 1
			end
		end

		@saque
	end
end
