class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      if req.path.split("/items/").last

    resp.finish
  end

end
