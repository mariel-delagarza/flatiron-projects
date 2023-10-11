require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/places" do
    @places = Place.all
    erb :'places/index'
  end

  get "/places/new" do
    erb :'places/new'
  end

  get "/places/:id" do
    @place = Place.find(params[:id])
    erb :'places/show'
  end

  post "/places" do
    binding.pry
  end

  get "/users/new" do
    erb :'users/new'
  end

  post "/users" do
    binding.pry
  end

end
