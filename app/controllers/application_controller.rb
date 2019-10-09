require './config/environment'

  # set :bind, "0.0.0.0"

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :sign_up
  end

  get "/sessions/sign_up" do 
    erb :"sessions/sign_up"
  end

end
