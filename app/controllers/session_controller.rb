require 'sinatra'
class SessionController < ApplicationController
     #validate input
        #create new user if valid
        #log them in
        #redirect to their home page
    #route to get login page
    get '/login' do
        # render form page
        erb :'sessions/login.html'
    end

    #route to login a user
    post '/login' do
        user = User.find_by(user_name: params["user_name"])

        if user && user.authenticate(params["password"])
            session[:user_id] = user.id
            redirect '/profile'
        else
            redirect '/login'
        end
    end

    # set :bind, "0.0.0.0"

    get '/sign_up' do 
        erb :"/sessions/sign_up"
    end

    post '/sign_up' do 
        if User.find_by(user_name: params[:user_name])
            flash[:message] = "That username is already taken. Try something else."
            redirect '/sign_up' 
        else
            if User.find_by(hero_name: params[:hero_name])
                flash[:message] = "Hero name is already taken."
                redirect '/sign_up'
            else
                user = User.create(user_name: params[:user_name], hero_name: params[:hero_name], password: params[:password])
                session[:user_id] = user.id
                redirect '/profile'
            end
        end      
    end
    
    get '/logout' do 
        session.clear
        redirect '/login'
    end
end