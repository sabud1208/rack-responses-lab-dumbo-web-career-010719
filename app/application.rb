class Application
  resp = Rack::Response.new 
  
  if Time.now.to_i > 12
    resp.write "Good Morning!"
  else 
    resp.write "Good Afternoon!"
end