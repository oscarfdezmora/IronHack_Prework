=begin
	
	IronHack Prework
	Ruby (1) - FizzBuzz

	Write a function that receives a sentence and returns 
	an array with the sentence's words sorted alphabetically. 
	Ignore case and punctuation.

=end
def word_sorting (phrase)
	#Divide la frase en palabras
	words = phrase.split
	#Relación de caracteres que obvia
	characters = ['¿''?''!''¡'','';''.'':']
	pairs = []
	#Por cada palabra, crea una dupla de caracteres en minuscula y limpio
	#Las mayusculas alteran el orden
	for word in words
		cleaned = word.gsub(/#{characters}/,'')
		pairs << [cleaned.downcase, cleaned]
	end
	#Ordena la lista de duplas según la primera palabra 
	pairs.sort!
	final = []
	#Crea una nueva lista con las palabras limpias originales
	for pair in pairs
		final << pair[1]
	end
	return final
end
