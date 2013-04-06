require "sinatra"

get "/" do
  "Hello World"
end

get "/hello/:name" do |name|
  "Hello #{name.upcase}"
end

get "/welcome/:name" do |name|
  if name.upcase == "COLLIN"
    "You are not welcome here"
  elsif name.upcase == "ZORK"
    "SUP duuuuuuuuuuuuuddde"
  else
    "Sup #{name}"
  end
end

get "/greetings/:name.html" do |name|
  "<a href='/welcome/#{name}'>Go to Hello World</a>"
end
  

   