require "rubygems"
require "sinatra"
require "erb"

before do
  @title = "Classic Style Sinatra App"
  @footer = "&copy; 2013 tdkn"
end

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get "/" do
  @contents = "Hello Sinatra!"
  erb :index
end

get "/about" do
  @contents = "About page here."
  erb :about
end

get "/echo/?:mesg?" do |m|
  @message = m;
  erb :echo
end
