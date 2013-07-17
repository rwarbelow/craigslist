get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :index
end


get "/category/:id" do
  @id = params[:id]
  @category = Category.find(@id)
  @posts = @category.posts
  erb :category_posts
end

get "/post/:id" do
  @id = params[:id]
  @post = Post.find(@id)
  erb :individual_post
end

get '/category/:id/new_post' do
  @category = Category.find(params[:id])
  erb :new_post
end



post '/category/:id/new_post' do
  puts "YEAH WE GOT IN HERE"
  p params
  @category = Category.find(params[:id])
  Post.create(:title => params[:title], :description => params[:description], :email => params[:email], :price => params[:price], :category_id => @category.id)
  redirect to '/'
end
