# cmd_proc.rb
cmd_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{env.join(' ')}"]] }
puts cmd_proc.call(ARGV)

