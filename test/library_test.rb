require './test/test_helper'
require './lib/library'
require './lib/author'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_it_can_add_to_collection
    dpl = Library.new

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    assert_equal [{:title=>"Jane Eyre", :publication_date=>"October 16, 1847"}], dpl.add_to_collection(jane_eyre)
  end

end
