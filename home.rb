require 'sinatra'

get '/' do
  view :home
end

helpers do
  def view(view)
    haml view
  end
end