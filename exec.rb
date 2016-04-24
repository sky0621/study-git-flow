
class Fizz

	def show
		p "Fizz!"
	end

end

class Buzz

	def show
		p "Buzz!"
	end

end

class GitHub

	def show
		p "GitHub!"
	end

end

class Git

	def show
		p "Git!"
	end

end

class FizzBuzz

	def show
		p "FizzBuzz!"
	end

end

class FizzBuzzExecutor

	def initialize(no)
		@no = no
	end

	def show
		# 7が最優先なのは仕様
		if @no % 7 == 0
			GitHub.new.show
		elsif @no % 11 == 0
			Git.new.show
		elsif @no % 3 == 0 && @no % 5 == 0
			FizzBuzz.new.show
		elsif @no % 3 == 0
			Fizz.new.show
		elsif @no % 5 == 0
			Buzz.new.show
		else
			p @no
		end
	end

end

no = ARGV[0].to_i

fb = FizzBuzzExecutor.new(no)
fb.show()

