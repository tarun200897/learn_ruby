def translate string
	vowels = ['a','e','i','o','u']
	result = string.split(' ').map { |word| 
		for i in 0...word.length 
			if word[i] == 'u' and word[i-1]
				
			end
			if vowels.include?(word[i])
				if i > 0
					unless word[i] == 'u' and word[i-1] == 'q'
						break
					end
				else
					break
				end
			end
		end
		result = word[i...word.length] + word[0...i] + 'ay'
	 }.join(' ')
	 result
end