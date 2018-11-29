require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['dogs', 'art', 'music', 'films', 'coffee']
  erb :marina
end

get '/favourites' do
  @fav_links = {"https://www.poetryfoundation.org": 'Poetry Foundation',"https://www.youtube.com": 'You Tube',"https://stackoverflow.com": 'StackOverflow'}
  erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
