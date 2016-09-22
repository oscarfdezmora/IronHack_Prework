=begin
	
	IronHack Prework
	Ruby (1) - FizzBuzz

	Write a function that receives a sentence and returns 
	an array with the sentence's words sorted alphabetically. 
	Ignore case and punctuation.

=end
def word_sorting (phrase)

	words = phrase.split
	characters = ['¿''?''!''¡'','';''.'':']
	pairs = []

	for word in words
		cleaned = word.gsub(/#{characters}/,'')
		pairs << [cleaned.downcase, cleaned]
	end

	pairs.sort!
	final = []

	for pair in pairs
		final << pair[1]
	end
	return final
end
