require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'Welcome to a secret route'
end

# Showing a cat image on the /cat route page
# get '/cat' do
#   "<div>
#     <img src='http://bit.ly/1eze8aE'>
#   </div>"
# end

# Showing a cat image WITH CSS styling on the /cat route page
# get '/cat' do
#   "<div style='border: 3px dashed red'>
#     <img src='http://bit.ly/1eze8aE'>
#   </div>"
# end

# Separating concerns - moving the HTML to a view (index.erb) &
# accessing the HTML by referencing the view from within the block.
# get '/cat' do
#   # Applying the random name logic here, in the controller. It
#   # shouldn't be applied in the view. The view will reference the
#   # instance variable.
#   @name = ["Amigo","Oscar","Viking"].sample
#
#   # rendering a view file from the views directory
#   erb(:index)
# end

# Introducing params
get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample

  # rendering a view file from the views directory
  erb(:index)
end

# Introducing params.
# Changed from GET request to POST request method in POSTed params ch.
post '/named-cat' do
  p params
  @name = params[:name]

  # rendering a view file from the views directory
  erb(:index)
end

# POSTed params ch.
get '/cat-form' do
  erb(:cat_form)
end
