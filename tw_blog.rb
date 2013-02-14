class TWBlog < Sinatra::Base

  configure :production do
    require 'newrelic_rpm'
  end

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

  get '/resume' do
    redirect 'TylerWymerResume.pdf'
  end
end
