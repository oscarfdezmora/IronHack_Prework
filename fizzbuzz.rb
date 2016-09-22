=begin
	
	IronHack Prework
	Ruby (1) - FizzBuzz

	Recibe dos limites y una relacion de codificacion;
	si los valores entre los limites son divisibles por la codificacion 
	muestra esta; sino, el valor sin codificar
=end

#Definicion de limites
init_num = 1
end_num = 100

#Definicion de la codificacion
coding = {}
coding["Fizz"]=3
coding["Buzz"]=5

#Inicializa la variable de rotacion
start = init_num

#Por cada valor entre los dos limites
while start <= end_num
	result = ""
	#Por cada valor de codificacion, 
	#comprueba si es divisible y almacena en variable
	coding.each do |word,divisor|
		if ( start % divisor ) == 0
			result += word
		end
	end

	#Si la variable esta en blanco, pone el numero, 
	#sino, la variable de codificacion
	if result == ""
		puts start
	else
		puts result
	end

	#Aumenta la variable de rotacion
	start +=1
end