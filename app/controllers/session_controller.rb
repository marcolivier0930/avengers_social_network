require 'sinatra'
class SessionController < ApplicationController

    # set :bind, "0.0.0.0"

    get '/sessions/sign_up' do 
        erb :"/sessions/sign_up"
    end
end