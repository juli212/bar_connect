get '/users/new' do
  if request.xhr?
    erb :'_register', layout: false
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  if @user
    erb :'/users/show'
  else
    redirect "/"
  end
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users' do
  redirect '/'
end

get '/users/:id/edit' do
  @user = User.find_by(id: params[:id])
  erb :'/users/edit'
end

put '/users/:id' do
  @user = User.find_by(id: params[:id])
  @user.assign_attributes(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages

  end
end
