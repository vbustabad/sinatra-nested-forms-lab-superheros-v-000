require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      "Create a Team and Heroes!"

      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params[:team][:name], params[:team][:motto])

      team_members = params[:team][:members]

      @superheroes = team_members.collect { |member_data| superhero = Superhero.new(member_data[:name], member_data[:power], member_data[:biography]) }

      erb :team
    end

end
