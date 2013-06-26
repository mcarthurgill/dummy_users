enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/login' do
  user = User.find_by_email(params[:email])
  password = params[:password]
  if user && user.password == password
    session[:user] = user.id
    redirect '/lecoololdsecretpage'  
  else
    redirect 'http://trololololololololololo.com/'
  end
end

get '/lecoololdsecretpage' do
  @user = User.find(session[:user])
  erb :lecoololdawesomepage
end


get '/logout' do
  session.clear
  redirect '/'
end

get '/signup' do 
  erb :signup
end

post '/signup' do 
  user = User.new :name => params[:name], 
                  :email => params[:email], 
                  :password => params[:password]
  user.save
  redirect '/'
end
