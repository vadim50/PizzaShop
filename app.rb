require 'rubygems'
require 'sinatra'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product <ActiveRecord::Base

end

class Order < ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	@product = Product.find(1)

	erb :about
end

post '/place_order' do
  @order = Order.create(params[:order])
  
    erb :order_placed
 
end


post '/cart' do
  @orders_input = params[:orderstring]
  @items = parse_orders_input @orders_input

  if @items.length == 0

    return erb :cart_is_empty

  end

  @items.each do |item|
    #id, cnt
    item[0] = Product.find(item[0])
  end
	erb :cart
end

def parse_orders_input orders_input
  s1 = orders_input.split(/,/)

  arr = []

  s1.each do |x|
    s2 = x.split(/\=/)

    s3 = s2[0].split(/_/)

    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]

    arr.push arr2
  end

  return arr
end



