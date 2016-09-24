#Clase ingrediente
class Ingredient
	#Permite exportar valores name y price
	attr_reader :name, :price
	#Valores de definicion; deben iniciarse con name y price
	def initialize(name, price)
        @name = name
	    @price = price
  	end
end

class MilkShake
	#Valores de definicion
  	attr_reader :price_of_milkshake

  	def initialize
    	@base_price = 3
    	@ingredients = [ ]    
  	end
  	#Funcion añadir ingredientsgit a
  	def add_ingredient(ingredient)
    	@ingredients.push(ingredient)
  	end

  	def price_of_milkshake
  		#Let's establish what our counter should be before we start adding ingredients into the mix
  		total_price_of_milkshake = @base_price
  		#Add each ingredients price to our total
  		@ingredients.each do |ingredient|
    		total_price_of_milkshake += ingredient.price
  		end
  		#return  our total price to whoever called for it
   		total_price_of_milkshake
  	end
end

class ShackShop
	def initialize
		@milkshakes = []
	end

	def add_milkshakes(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout
		total = 0
		@milkshakes.each do |milkshake|
			total += milkshake.price_of_milkshake
		end
		total
	end
end




nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
cream = Ingredient.new("Cream", 3)
vanilla = Ingredient.new("Vanilla", 3)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake

pepi_milkshake = MilkShake.new
pepi_milkshake.add_ingredient(cream)
pepi_milkshake.add_ingredient(chocolate_chips)
pepi_milkshake.add_ingredient(vanilla)
puts pepi_milkshake.price_of_milkshake

bill = ShackShop.new
bill.add_milkshakes(nizars_milkshake)
bill.add_milkshakes(pepi_milkshake)
puts bill.checkout