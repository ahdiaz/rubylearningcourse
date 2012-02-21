# netouri_count_words.rb

require 'open-uri'

word = ARGV[0] == nil ? 'the' : ARGV[0]
puts "Searching for '#{word}' word..."

f = open('http://satishtalim.github.com/webruby/chapter3.html')
body = f.readlines.join

puts body.scan(/\b#{word}\b/i).size

