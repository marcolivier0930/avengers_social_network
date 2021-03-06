class UsersController < ApplicationController

#   # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

#   # GET: /users/new
#   get "/users/new" do
#     erb :"/users/new.html"
#   end

#   # POST: /users
#   post "/users" do
#     redirect "/users"
#   end

#   # GET: /users/5
  get "/users/:id" do
    if logged_in?
      binding.pry
      @user = User.find(params[:id])
      erb :"/users/show.html"
    else
      redirect '/login'
    end
  end

  get '/profile' do
    if logged_in?
      @user = current_user
      erb :"users/show.html"
    else
      redirect '/login'
    end
  end

   # GET: /users/5/edit
  get "/users/:id/edit" do
    @user = User.find(params[:id])
    if logged_in?
      if @user == current_user
        erb :"/users/edit.html"
      else
        '/profile'
      end
    else
      redirect '/login'
    end
  end

#   # PATCH: /users/5
#   patch "/users/:id" do
#     redirect "/users/:id"
#   end

#   # DELETE: /users/5/delete
#   delete "/users/:id/delete" do
#     redirect "/users"
#   end
 end
