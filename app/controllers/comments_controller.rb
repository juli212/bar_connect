post '/comments' do
  @event = Event.find_by(id: params[:event_id])
  @comment = Comment.new(params[:comment].merge(user_id: current_user.id, event_id: params[:event_id]))

  @comments = @event.comments << @comment

  redirect "/events/#{@event.id}"
end
