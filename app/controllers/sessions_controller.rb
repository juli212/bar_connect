get '/login' do
  if request.xhr?
    erb :'_login', layout: false
  else
    erb :'/sessions/new'
  end
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = ['Invalid credentials']
    erb :'/sessions/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
