=begin
	
	IronHack Prework
	Ruby (1) - Your first ruby scripts

	El programa recibe dos nombres de fichero;
	copia el primero sobre el segundo

=end

#Recibe fichero origen
puts "What is the source file?"
file_origin = gets.chomp

#Recie fichero destino
puts "What is the destination file?"
file_destination = gets.chomp

#Lee el contenido del fichero origen
content = IO.read(file_origin)

IO.write(file_destination, content)