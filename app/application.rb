class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = Item.item.find { |i| i.name == req.path.split("/items/").last }
      item ? item : resp.write(resp.body)
    else
      resp.write(resp.body)
    end

    resp.finish
  end

end
