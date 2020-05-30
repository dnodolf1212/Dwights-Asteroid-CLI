require 'open-uri'
#require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'

class API
    puts "api class loaded"
    KEY = ENV["API_KEY"]
    BASE_URL =  "https://api.nasa.gov/neo/rest/v1/feed?start_date=2020-05-28&end_date=2020-05-28&detailed=false&api_key="
    
    def self.get_profile
        uri = URI.parse(BASE_URL)
        response = Net::HTTP.get_response(uri)
        body = response.body
        json = JSON.parse(body)
        p json
    end 

#todays_date = Time.now.to_s.split(" ")[0]
#url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=DEMO_KEY"
end 

#API.get_profile 
