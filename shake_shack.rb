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
  	def initialize
    	@base_price = 3
    	@ingredients = [ ]    
  	end
  	#Funcion añadir ingredients
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

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake
