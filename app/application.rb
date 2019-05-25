class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = Item.item.find { |i| i.name == req.path.split("/items/").last }
      if item
        resp.body = item.price
      else
        resp.write("Item not found")
      end
    else
      resp.status = 404
      resp.write("Route not found")
    end

    resp.finish
  end

end
