class Book
	def title
		@title
	end

	def title=(new_title)
		@title = titleize(new_title)
	end

	def titleize string
		no_caps = ['the','a','over','and','an','in','of']
		string.capitalize!
		result = string.split(' ').map { |word|  
			if no_caps.include?(word)
				word
			else
				word.capitalize
			end
		}.join(' ')
		result
	end
end