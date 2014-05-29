class Product
        
	attr_accessor :title,:price,:category

	def initialize title,price,category

	@title = title
	@price = price
	@category = category

	end
	# attribute names should be title, price, category
	# where title is a String
	# where price is a Float
	# where category is a Symbol
end
