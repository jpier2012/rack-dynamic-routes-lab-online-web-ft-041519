class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      req.path.split("/items/").last
      Item.item.find { |i| i.name == item_name}
    else
      resp.write(resp)
    end

    resp.finish
  end

end
