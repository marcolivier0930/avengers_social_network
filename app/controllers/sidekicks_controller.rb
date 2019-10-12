class SidekicksController < ApplicationController

  # GET: /sidekicks
  get "/sidekicks" do
    erb :"/sidekicks/index.html"
  end

  # GET: /sidekicks/new
  get "/sidekicks/new" do
    erb :"/sidekicks/new.html"
  end

  # POST: /sidekicks
  post "/sidekicks" do
    redirect "/sidekicks"
  end

  # GET: /sidekicks/5
  get "/sidekicks/:id" do
    erb :"/sidekicks/show.html"
  end

  # GET: /sidekicks/5/edit
  get "/sidekicks/:id/edit" do
    erb :"/sidekicks/edit.html"
  end

  # PATCH: /sidekicks/5
  patch "/sidekicks/:id" do
    redirect "/sidekicks/:id"
  end

  # DELETE: /sidekicks/5/delete
  delete "/sidekicks/:id/delete" do
    redirect "/sidekicks"
  end
end
