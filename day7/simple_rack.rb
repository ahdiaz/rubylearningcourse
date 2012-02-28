# simple_rack.rb
require 'rack'

def my_method env
  #p env
  [200, {"Content-Type"=>"text/plain"}, ["Command line argument you typed was: #{ARGV.join(' ')}"]]
end

Rack::Handler::WEBrick.run method(:my_method), :Port => 8500

