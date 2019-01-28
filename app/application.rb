class Application
  
  def call(env)
  resp = Rack::Response.new 
  time = Time.new
  if Time.now.to_i <= time
    resp.write "Good Morning!"
  else 
    resp.write "Good Afternoon!"
  end
   resp.finish
 end 
end