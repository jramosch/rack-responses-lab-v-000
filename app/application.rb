class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.new
    if t.hour < 12
      resp.write "Good Morning!"
      resp.write "Current hour: #{t.hour}"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
