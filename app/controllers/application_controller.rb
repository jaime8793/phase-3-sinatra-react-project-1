# require 'rack'
# require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Luv!"}.to_json
  end
  
  get "/todo_lists" do
    TodoList.all.to_json
  end

  get"/usernames" do
    Username.all.to_json
  end

    
end

