require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :superhero
    end

    post "/teams" do
      @team_hash = params

      erb :team
    end
end
