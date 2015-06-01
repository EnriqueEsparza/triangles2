require "sinatra"
require "sinatra/reloader"
also_reload "lib/**/*.rb"
require "./lib/triangle"


get('/') do
  erb(:index)
end

get('/triangles') do
  a = params.fetch('a')
  b = params.fetch('b')
  c = params.fetch('c')
  @triangle = Triangle.new(a, b, c)
  erb(:triangles)
end
