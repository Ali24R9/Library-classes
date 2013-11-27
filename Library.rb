class Library
    def 
    	self.all; ObjectSpace.each_object(self).to_a 
    end
    def 
    	self.count; all.length 
    end
end

class Shelf < Library
	def initialize (shelf_num)
		@shelf_num = shelf_num
	end
	def new_shelf 
		puts "The shelf number is #{@shelf_num}"
	end
end

class Book < Shelf
	def initialize (book_name)
		@book = book_name
	end
	def enshelf
		puts "#{@book} has been put on a shelf" 
	end

	def unshelf
		puts "#{@book} has been removed from the shelf"
	end
end


first_shelf = Shelf.new(1)
first_shelf.new_shelf

second_shelf = Shelf.new(2)
second_shelf.new_shelf

first_book = Book.new("The Journey")
first_book.enshelf
first_book.unshelf



