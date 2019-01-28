class Application
  
  def call(env)
  resp = Rack::Response.new 
  time = Time.now.to_i
  t = Time.now.hour
  resp.write "#{t}\n"
  if time >= 0000
    resp.write "Good Morning!"
  elsif time <= 1300
    resp.write "Good Afternoon!"
  end
   resp.finish
 end 
end