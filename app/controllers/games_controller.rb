require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'time'

class GamesController < ApplicationController

  def show

    @thedate = params[:id]

    # Code test with an API call • "Ligue 1" league is 525
    ####################################
    # Game IDs recovery based on date
    ####################################

    # today = Time.now.strftime("%Y-%m-%d")
    # friday20190920 = "2019-09-20" #Only one game as been played that date

    url = URI("https://api-football-v1.p.rapidapi.com/v2/fixtures/league/525/#{@thedate}")
    jsonresponse = api_call(url)
    fixtures_list = JSON.parse(jsonresponse)

    fix_list_hash = fixtures_list["api"]["fixtures"]

    games_array = []

    fix_list_hash.each do |game|
        if game["status"] == "Match Finished"
            games_array << game["fixture_id"]
        end
    end

    #############################
    # Fixtures details recovery
    #############################

    games_array.each do |fixture|

        url = URI("https://api-football-v1.p.rapidapi.com/v2/fixtures/id/#{fixture}")
        jsonresponse = api_call(url)
        fixture_events = JSON.parse(jsonresponse)

        fix_events_hash = fixture_events["api"]["fixtures"][0]

        #TODO: insert data into tables here
        #Check what's needed to create a fixture
        #and also all its events!

        newgame = Fixture.create(home_team: Team.where(city:fetchgoodteamname(fix_events_hash["homeTeam"]["team_name"]))[0], away_team: Team.where(city:fetchgoodteamname(fix_events_hash["awayTeam"]["team_name"]))[0], stadium: Stadium.where(town:fetchgoodteamname(fix_events_hash["homeTeam"]["team_name"]))[0], season: Season.last)
        newgame.status = "Finished"
        newgame.final_score = fix_events_hash["score"]["fulltime"]
        newgame.stage = getinteger(fix_events_hash["round"])
        newgame.date = Time.parse(fix_events_hash["event_date"]).strftime("%Y-%m-%d")
        # newgame.time = Time.parse(fix_events_hash["event_date"]).strftime("%H:%M") # ==> NOT WORKING!
        newgame.save

        games_array = []

        # # Not sure it's needed
        # fix_events_hash["fixture_id"]
        # fix_events_hash["homeTeam"]["logo"]
        # fix_events_hash["awayTeam"]["logo"]
        # fix_events_hash["events"].each do |event|
        #     puts "-----"
        #     puts event["type"] #Goal or Card or subst
        #     puts event["player"]
        #     puts event["detail"]
        # end

    end

  end

  def api_call(url)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'api-football-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'QfDWrtMJ5wmsh1fjUZRYXaKkPpuvp1nv5hUjsnZgUbue0iFVJY'

    response = http.request(request)
    return response.read_body
  end

  def fetchgoodteamname(api_name)

  	matchingtable = {
  		"Dijon" => "Dijon",
  		"Saint Etienne" => "Etienne",
  		"Marseille" => "Marseille",
  		"Reims" => "Reims",
  		"Nice" => "Nice",
  		"Amiens" => "Amiens",
  		"Strasbourg" => "Strasbourg",
  		"Metz" => "Metz",
  		"Montpellier" => "Montpellier",
  		"Rennes" => "Rennes",
  		"Angers" => "Angers",
  		"Bordeaux" => "Bordeaux",
  		"Lille" => "Lille",
  		"Nantes" => "Nantes",
  		"Paris Saint Germain" => "Paris",
  		"Nimes" => "Nîmes",
  		"Stade Brestois 29" => "Brest",
  		"Toulouse" => "Toulouse",
  		"Monaco" => "Monaco",
  		"Lyon" => "Lyon"
  	}

  	return matchingtable[api_name]
  end

  def getinteger(string)
  	string.scan(/\d+/) do |x|
  	  return x
  	end
  end

end
