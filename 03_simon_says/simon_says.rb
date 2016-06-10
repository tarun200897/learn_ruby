def echo string
	string
end

def shout string
	string.upcase
end

def repeat string, times=2
	result = string
	(2..times).each do
		result += " " + string
	end
	result
end

def start_of_word string, length
	string[0, length.to_i]
end

def first_word string
	string.split(" ")[0]
end

def titleize string
	no_caps = ['the','a','over','and']
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