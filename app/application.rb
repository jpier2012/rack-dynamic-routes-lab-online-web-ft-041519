class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    item_name = req.path.match(/items/).split("/items/").last
    binding.pry
    resp.finish
  end

end
