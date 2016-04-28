
get '/' do
  if logged_in?
    redirect '/events'
  else
    erb :'/index'
  end
end
