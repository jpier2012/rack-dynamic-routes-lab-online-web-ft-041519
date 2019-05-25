class Application

  @@item = [item.new("item", 3.42)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@item.find do |i|
        binding.pry
        i.name == req.path.split("/items/").last
      end
      # if item
      #   resp.body = item.price
      #   resp.write(resp.body)
      # else
      #   resp.status = 400
      #   resp.write("Item not found")
      # end
    else
      resp.status = 404
      resp.write("Route not found")
    end

    resp.finish
  end

end
