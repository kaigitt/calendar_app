class Scraping < ApplicationRecord
  require 'mechanize'

    def self.scrape
      agent = Mechanize.new                  #agentは任意の変数
      page = agent.get("https://twitter.com/home?lang=ja")  #pageは任意の変数 getの引数はサイトのURL
      elements = page.search('div.css-1dbjc4n span.css-901oao') #div.idxcol aは取得したい要素  elementsは任意の変数
      elements.each do |element|
        book = Book.new                      #Fishは任意のクラス、fishは任意のインスタンス
        book.name = element.inner_text
        book.save
      end
    end
    
    #scrapingを応用課題で
end
