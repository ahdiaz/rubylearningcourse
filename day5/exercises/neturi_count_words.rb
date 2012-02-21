# neturi_count_words.rb

require 'net/http'

word = ARGV[0] == nil ? 'the' : ARGV[0]
puts "Searching for '#{word}' word..."

uri = URI('http://satishtalim.github.com/webruby/chapter3.html')

body = Net::HTTP.get(uri)
puts body.scan(/\b#{word}\b/i).size

