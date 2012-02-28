# simple_rack.rb

class SimpleRack
  def initialize(argv)
    @s_argv = argv.join(' ')
  end
  def call(env)
    [200,
      {"Content-Type" => "text/plain"},
      ["Command line argument you typed was: #{@s_argv}"]]
  end
end

