
class ShoppingCart
	#Inicializa con un array
	def initialize
		@items = []
	end
	#Añade items al carrito
	def add_item(item)
		@items.push(item)
	end
	#Suma de cantidades
	def checkout
		#Se inicia el total con 0
		total = 0.00
		#Por cada item, añade el precio al total
		@items.each do |item|
			total += item.price
		end
		#Si hay mas de cinco elementos, se hace un 10% de descuento
		if @items.length > 5
			total = total * 0.9
		end
		total = total.round(2)
		puts "Your total today is #{total}. Have a nice day!"
	end
end

class Item 
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		return @price
	end
end

class Fruit < Item
	def price
		#Busca el día que se añade; si es sabado o domingo, añade un 10% de descuento
		day = Time.now.strftime("%A")
		cost = @price
		if day == "Saturday" || day == "Sunday"
			cost = (cost * 0.9).round(2)
		end
	return cost
	end
end

class Houseware < Item
	def price
		cost = @price
		#Si cuesta más de 100, se hace un 5% de descuento
		if @price > 100
			cost = (cost * 0.95).round(2)
		end
	return cost
	end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
puts joshs_cart.checkout