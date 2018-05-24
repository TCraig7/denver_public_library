require './lib/book'

class Author

  attr_reader   :first_name,
                :last_name,
                :books

  def initialize(author_name)
    @first_name = author_name[:first_name]
    @last_name = author_name[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    books << {title: title,
              publication_date: publication_date}
  end
end
