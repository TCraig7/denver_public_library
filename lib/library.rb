require './lib/author'
require './lib/book'

class Library

  attr_reader   :books,
                :add_to_collection

  def initialize
    @books = []
  end

  def add_to_collection(book_title)
    
  end

end
