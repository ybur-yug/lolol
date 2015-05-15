require "lolol/version"
require 'mechanize'

module Lolol
  class Lulz
    def initialize
      @browser = Mechanize.new
    end

    def joke
      page = @browser.get('http://jokes.reddit.com')
      jokes = page.links.map { |l| l if l.dom_class == 'title may-blank ' }.compact!
      joke_page = @browser.get(jokes.sample.uri.to_s)
      joke = joke_page.search(".md")[1].text
      title = joke_page.links.map { |j| j if j.dom_class == 'title may-blank ' }.compact![0].text
      "#{title}\n#{joke}"
    end
  end
end

