post '/events/:id' do
  @event = Event.find_by(id: params[:id])
  @user = User.find_by(id: session[:user_id])

  @event.users << @user
    redirect '/events'
end
