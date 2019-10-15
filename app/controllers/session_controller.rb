require 'sinatra'
class SessionController < ApplicationController

    # set :bind, "0.0.0.0"

    get '/sessions/sign_up' do 
        erb :"/sessions/sign_up"
    end

    get '/logins/index' do 
        erb :"/logins/index.html"
    end


    get '/logout' do 
        session.clear
    end
end