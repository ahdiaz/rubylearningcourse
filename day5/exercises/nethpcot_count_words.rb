# nethpcot_count_words.rb

require 'open-uri'
require 'hpricot'

word = ARGV[0] == nil ? 'the' : ARGV[0]
puts "Searching for '#{word}' word..."

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts page.inner_html.scan(/\b#{word}\b/i).size

