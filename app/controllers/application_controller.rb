require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
     erb :super_hero
  end
  
  post '/teams' do 
    i=0
    @team_name = params[:team][:name]
    @team_motto = "Team Motto: " + params[:team][:motto]
    params[:team][:members].each do |name| 
      i+=1
      name.each do |x,value|
        instance_variable_set("@#{x}_#{i}", "Hero #{x.capitalize}: " + value) 
      end 
    end
    @hero_bio_1 = "Hero Biography: " + params[:team][:members][0][:bio]
    @hero_bio_2 = "Hero Biography: " + params[:team][:members][1][:bio]
    @hero_bio_3 = "Hero Biography: " + params[:team][:members][2][:bio]
    erb :team 
  end 

end
