class Application
  
  def call(env)
  resp = Rack::Response.new 
  time = Time.new(2015,11,27,9,30)
  if Time.now.to_i > time
    resp.write "Good Morning!"
  else 
    resp.write "Good Afternoon!"
  end
 end 
end