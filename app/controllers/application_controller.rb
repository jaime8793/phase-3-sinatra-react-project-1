class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  
  get "/todo_lists" do
    TodoList.all.to_json
  end

  delete "/todo_lists/:id" do
   todo = TodoList.where(id: params["id"]).first
    if todo.destroy
      {success: "okay"}.to_json
    else
      halt 500 
    end
  end

 post"/todo_lists" do
    TodoList.create(params)
  end


  get"/usernames" do
    Username.all.to_json
  end

  delete"/usernames/" do
    Username = Username.where(id: params["id"]).first
    if todo.destroy
      {success: "okay"}.to_json
    else
      halt 500 
    end
  end

  post "/usernames" do
    Username.create(params)
  end
end

