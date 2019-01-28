class Application
  
  def call(env)
  resp = Rack::Response.new 
  time = Time.new
  t = Time.now.hour
  resp.write "#{t}\n"
  if t >= 0000
    resp.write "Good Morning!"
  else 
    resp.write "Good Afternoon!"
  end
   resp.finish
 end 
end