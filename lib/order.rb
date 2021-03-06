class Order
	attr_accessor :products

	# Remember that working with YAML files YAML::load and YAML::dump are your friends!

	def initialize yam_file
		@products = []
		File.open('../product.yaml','r') do |p|
		product = Product.new p.title,p.price,p.category
		@product.push(product)
		end
       	  	# loading or not loading should be the key here.
        end
 
    def filter_by_category category
	@products.select{|p| p.category == category}
    	# Perhaps you could use the select method for arrays :)
    end

    def filter_by_price price
	@products.select{|p| p.price.between? price}
    	# Perhaps the select method could work here too!
    end
 
    def add_product product
	@products.push(product)
      # Remember stacks & queues? Pushing might be the answer.
    end
 
    def get_product title
	@products.each{|p| 
	if p.title == title
	return p
	end
	}
    	# you query products by a product title but the catchy thing here is
    	# that if there are multiple matches only the first one is returned.
    end
 
    def save
    	# maybe you could try dumping around here :)
    end
end
