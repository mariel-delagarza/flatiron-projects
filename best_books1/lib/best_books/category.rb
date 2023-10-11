#This file should contain information about the categories of books
#This file should:
#  1. Be able to list each category with def self.all
#  2. Be initialized with the name of the category and added to @@all so @@all
#      knows the entire list of categories
#  3. A way to iterate through all of the books and find the ones in a chosen
#      category
#  4. A way to iterate over the books in the category and find the authors

class BestBooks::Category


  def self.all

    fiction = self.new
    fiction.name = "Fiction"
    fiction.book = "Still Me (Me Before You #3)"
    fiction.author = "Jojo Moyes"
    fiction.url = "https://www.goodreads.com/choiceawards/best-fiction-books-2018"

    mystery_thriller = self.new
    mystery_thriller.name = "Mystery & Thriller"
    mystery_thriller.book = "The Outsider"
    mystery_thriller.author = "Stephen King"
    mystery_thriller.url = "https://www.goodreads.com/choiceawards/best-mystery-thriller-books-2018"

    [fiction, mystery_thriller]
  end

end
