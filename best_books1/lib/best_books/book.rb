class BestBooks::Book
  attr_accessor :title, :author, :category, :url

  def self.all
    puts <<-DOC.gsub /^\s*/,''
      1. book
      2. book2
      3. book3
    DOC

    book1 = self.new
    book1.title = "Title"
    book1.author = "Author"
    book1.category = "Category"
    book1.url = "https://www.goodreads.com/choiceawards/best-mystery-thriller-books-2018"

    book2 = self.new
    book2.title = "Book2"
    book2.author = "Author2"
    book2.category = "Thriller"
    book2.url = "https://www.goodreads.com/choiceawards/best-fiction-books-2018"

    all = [book1, book2]
    puts all

  end

end
