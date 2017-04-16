require 'rubygems'
require 'sinatra'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product <ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do

	erb :about
end


post '/cart' do
	orders = params[:orders]
	@orders = parse_orders_input orders
  erb :cart
end

def parse_orders_input orders

	s1 = orders.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/=/)
		s3 = s2[0].split(/_/)

		id = s3[1]
		cnt = s2[1]
		arr2 = [id, cnt]

		arr.push arr2

	end

	return arr

end



