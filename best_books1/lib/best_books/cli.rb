class BestBooks::CLI

  def call
    BestBooks::Scraper.new.make_books
    puts "Welcome to the Goodreads Best Books of 2018!"
    start
  end

  def start
    menu
    goodbye
  end

  def menu
    puts ""
    puts "If you would like to see the categories, enter 'category'."
    puts "If you would like to see a list of the book titles, enter 'list'."
    puts "If you would like to see the top book in each category, enter 'top'."
    puts "Type 'exit' to exit the program."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "category"
        list_categories
      when "list"
        list_books
      when "top"
        top_books
      else puts "I didn't understand. Please type: category, author, list, or exit."
      end
    end
  end

  def list_categories
    BestBooks::Category.all
  end

  def list_books
    BestBooks::Book.all
  end

  def top_books
    BestBooks::Category.books
  end

  def goodbye
    puts "Good bye! Enjoy your books!"
  end

end
