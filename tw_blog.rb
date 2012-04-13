class TWBlog < Sinatra::Base
  get '/' do
    redirect '/about'
  end

  get '/about' do
    @title = "About"
    haml :about
  end

  get '/projects' do
    @title = "Projects"
    haml :projects
  end

  get '/tw.css' do
    sass :tw
  end
end
