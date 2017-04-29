require "sinatra"
require 'sequel'
require "json"

DB = Sequel.connect('sqlite://db.sqlite3')

get "/" do 
    "hello world"
end

get "/hello.json" do
    content_type :json
    {:name=>'liunix',:age=>35}.to_json
end

get "/person.json" do 
    content_type :json
    DB[:person].all.to_json
end

post "/post" do 
    "hello data=#{params[:data]}"
end