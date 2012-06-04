# reverse_string.rb

class ReverseString
  def call(env)
    req = Rack::Request.new(env)
    str = req.params['str']
    str2 = str.reverse

    p req.request_method

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "Original string: #{str} | Reverse string #{str2}"
      res.write str
    end
  end
end

