require 'rubygems'
require 'sinatra'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.rb"

class Product <ActiveRecord::Base

end

get '/' do
	erb :index
end

get '/about' do
	erb :about
end




