require "awesome_print"
class Api
    todays_date = Time.now.to_s.split(" ")[0]
    KEY = ENV["API_KEY"]
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=DEMO_KEY"
    BASE_URL =  "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=FIZam8paaqjNx2IjOKpRwCZymLdMtlrvcDaq5jSX"
    
    def self.get_profile
        todays_date = Time.now.to_s.split(" ")[0]
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)
        
        data["near_earth_objects"][todays_date].each do |asteroid|
            name = asteroid["name"]
            Asteroid.new(name)
        end 
    end 

    


end 
 #Api.get_profile 
 