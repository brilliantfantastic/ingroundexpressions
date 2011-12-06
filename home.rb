require 'sinatra'
require 'haml'
require 'sass'

get '/css/application.css' do
  content_type "text/css", :charset => "utf-8"
  sass :application
end

get '/' do
  view :home
end

helpers do
  def view(view)
    haml view
  end
end