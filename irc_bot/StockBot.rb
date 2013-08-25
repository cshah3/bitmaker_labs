require 'cinch'
require 'open-uri'
require 'nokogiri'
require 'cgi'

bot = Cinch::Bot.new do
  configure do |c|
    c.server   = "irc.freenode.net"
    c.nick     = "StockBot"
    c.channels = ["#bitmaker"]
  end

  helpers do
    def stock_price(query)
      url = "http://www.google.com/finance?q=#{CGI.escape(query)}"
      CGI.unescape_html Nokogiri::HTML(open(url)).at(".pr").text
    end
  end

  on :message, /^!stock (.+)/ do |m, ticker|
    m.reply("$#{stock_price(ticker).to_f}" || "No results found", true)
  end
end

bot.start