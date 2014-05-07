require 'sinatra'
require './expense'

expenses = []
next_id = 1

get '/' do 
	@exp = expenses
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	expense = Expense.new(next_id, params[:name], params[:number])
	next_id += 1
	expenses << expense
	redirect to '/'
end

get '/show/:id' do
	@exp = expenses
	erb :show
end