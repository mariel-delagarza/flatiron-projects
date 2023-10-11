class BestBooks::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-fiction-books-2018"))
  end

  def scrape_top_books
    category = self.get_page.css("h4.category__copy").text
    url = self.get_page.css("div.category clearFix a").text
  end


    #self.get_page.css("div.category clear Fix").each do |category_box|
    #  category = category_box.css(".category__copy").text
    #  title = category_box.css("img").css(".category__winnerImage )
