get '/events' do
  @events = Event.all
  erb :'/events/index'
end

get '/events/new' do
  erb :'/events/new'
end

post '/events' do
  @event = Event.new(params[:event])
  @user = User.find_by(id: session[:user_id])
  @user.events << @event

  if @event.save
    redirect '/events'
  else
    @errors = @event.errors.full_messages
    erb :'/events/new'
  end
end

get'/events/:id' do
  @event = Event.find_by(id: params[:id])
  erb :'/events/show'
end

get '/events/:id/edit' do
@event = Event.find_by(id: params[:id])
end
