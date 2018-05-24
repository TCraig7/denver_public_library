require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_it_returns_author_information
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
  end

  def test_it_can_add_a_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [{:title=>"Jane Eyre", :publication_date=>"October 16, 1847"}], charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
  end

  def test_it_can_add_another_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [{:title=>"Villette", :publication_date=>"1853"}], charlotte_bronte.add_book("Villette", "1853")
  end

  def test_it_can_add_multiple_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    charlotte_bronte.add_book("Villette", "1853")

    assert_equal [{:title=>"Jane Eyre", :publication_date=>"October 16, 1847"}, {:title=>"Villette", :publication_date=>"1853"}], charlotte_bronte.books
  end
end
