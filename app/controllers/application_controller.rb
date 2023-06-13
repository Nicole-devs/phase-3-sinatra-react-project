class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/users' do
    content_type :json
    User.all.to_json(include: :tasks)
  end

  get '/tasks' do
    content_type :json
    Task.all.to_json(include: :user)
  end
  
  post '/users' do
    User.create(name: params[:name]).to_json
    
  end

  put '/users' do
    User.create(name: params[:name]).to_json
    
  end

  post '/tasks' do
    Task.create(params[:task])
    
  end

  delete '/tasks/:id' do
    Task.find(params[:id]).destroy
    redirect '/users'
  end

  delete '/users/:id' do
    User.find(params[:id]).destroy.to_json
  end
  
end
