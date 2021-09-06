require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "hello! we can reload"
end

get '/secret' do
  "expecting not to see this!!!!!"
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
 erb(:index)
end
