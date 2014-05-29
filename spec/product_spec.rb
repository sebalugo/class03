require 'spec_helper.rb'

describe Product do

	before :all do	
	tst = Product.new "l",5.5,:ff
	end

	describe "When creating a new a product" do
		context "With valid parameters" do
			it "should take 3 parameters and return a product object" do
			product = Product.new "lapiz",2,:utiles
			expect(product).to be_kind_of(Product)		
			end
		end
	end

	describe "#title" do
		it "should return the correct title" do
			product = Product.new "gorra",5.5,:ropa
			expect(product.title).to eql("gorra")
			# the name of the object created in the each block is asserted.
		end
		it "should be a string" do
			product = Product.new "gorra",5.5,:ropa
			expect(product.title).to be_kind_of(String)
			# the name should be of the class String
		end
	end

	describe "#price" do
		it "should return the correct price" do
			product = Product.new "gorra",5.5,:ropa
                        expect(product.price).to eql(5.5)
		end
			# the price of the object created in the each block is asserted.

		it "should be a float" do
			product = Product.new "gorra",5.5,:ropa
                        expect(product.price).to be_kind_of(Float)
		end
			# the price should be of the class Float
	end

	describe "#category" do
		it "should return the correct category" do
		product = Product.new "gorra",5.5,:ropa
                expect(product.category).to eql(:ropa)
		end
			# the category of the object created in the each block is asserted.

		it "should be a symbol" do
		product = Product.new "gorra",5.5,:ropa
                expect(product.category).to be_kind_of(Symbol)
		end
			# the category should be of the class Symbol
	end

end
