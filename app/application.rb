class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Testing"
    resp.finish
  end
end
