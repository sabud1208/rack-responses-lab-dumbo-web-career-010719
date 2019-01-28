class Application
  
  def call(env)
  resp = Rack::Response.new 
  time = Time.now.to_i
  t = Time.now.hour
  if t <= 1200
    resp.write "Good Morning!"
  elsif t == 1200 
    resp.write "Good Afternoon!"
  end
   resp.finish
 end 
end