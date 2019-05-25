class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      req.path.split("/items/").last
      
    else
      resp.write(resp.body)
    end

    resp.finish
  end

end
