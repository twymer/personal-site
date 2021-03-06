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

  get '/resume' do
    redirect 'TylerWymerResume.pdf'
  end

  get '/diamonds/?*' do
    redirect 'http://twymer.github.io/diamonds-js/'
  end
end
