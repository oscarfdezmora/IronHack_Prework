#Variable de decodificacion
def decode (item, array, key)
	#Comprueba si esta en array y busca nueva posicion
	if array.include?(item)
		new_pos=array.index(item) + key
		#Limites si se sale por arriba o abajo
		if new_pos >= array.length
			new_pos = new_pos - array.length
		elsif new_pos < 0
			new_pos = array.length + new_pos
		end
		item = array[new_pos]
	end
	return item
end

#Funcion principal, recibe la frase y el valor de cambio 
#Si no recibe, es 3 por defecto
def solve_cypher (phrase, key=3)
	
	#Array de minusculas
	first_low="a".ord
	last_low="z".ord

	array_low = []
	while first_low <= last_low
	array_low << first_low.chr
	first_low += 1
	end

	#Array de mayusculas
	first_upp="A".ord
	last_upp="Z".ord

	array_upp = []
	while first_upp <= last_upp
	array_upp << first_upp.chr
	first_upp += 1
	end

	#Por cada letra del mesaje, se invoca la funcion decode	
	iter = 0
	result = ''
	while iter < phrase.length
		#Comprueba primero minusculas
		item = decode(phrase[iter], array_low, key)
		#Despues mayusculas
		item = decode(item, array_upp, key)
		#Se concatena en el resultado
		result += item
		iter += 1
	end
	return result
end