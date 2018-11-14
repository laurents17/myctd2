require "sinatra"

#get "/" do
#  "OMG, hello Ruby Monstas!"
#end
#get "/monstas/:name" do
# "Hello #{params["name"]}!"
#end

get "/monstas/:name" do
  params.inspect
end