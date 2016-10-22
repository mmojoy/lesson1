require 'date'
class Lesson1
	def sum(val = 0)

		val = val.to_s

		if val.size == 1
			val.to_i
		else
			val.split('').map(&:to_i).inject(:+)
		end
	end

	def age(birthday)

		date = DateTime.now
		my_birthday	= Date.new
		live_days = (my_birthday - date).to_i
		seconds = (live_days*24*60*60).to_i
		minutes = (seconds / 60).to_i
		hours = (minutes / 60)
		days = (hours / 24)
		years = (days / 365)

		puts "Я живу #{years} года или #{days} дней или #{hours} часов или #{minutes} минут или #{seconds} секунд"

	end

	def name

		puts "Please enter your name:"
		your_name = gets

		full = " Hello" + your_name + "Super Man!"




	end
end
