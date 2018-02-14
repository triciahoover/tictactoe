require 'sinatra'
enable :sessions

get '/' do
	erb :home
end

post '/play' do
	session[:a1] = params[:a1]
	session[:a2] = params[:a2]
	session[:a3] = params[:a3]
	session[:b1] = params[:b1]
	session[:b2] = params[:b2]
	session[:b3] = params[:b3]
	session[:c1] = params[:c1]
	session[:c2] = params[:c2]
	session[:c3] = params[:c3]
	redirect '/game?'
end

get '/game' do
	a1 = session[:a1]
	a2 = session[:a2]
	a3 = session[:a3]
	b1 = session[:b1]
	b2 = session[:b2]
	b3 = session[:b3]
	c1 = session[:c1]
	c2 = session[:c2]
	c3 = session[:c3]
	erb :results, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :b1 => b1, :b2 => b2, :b3 => b3, :c1 => c1, :c2 => c2, :c3 => c3}
end