
class Api
    puts "api class loaded"
    KEY = ENV["API_KEY"]
    todays_date = Time.now.to_s.split(" ")[0]
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=DEMO_KEY"
    
    BASE_URL =  "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=FIZam8paaqjNx2IjOKpRwCZymLdMtlrvcDaq5jSX"
    
    def self.get_profile
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)
        data["near_earth_objects"].each do |date, asteroids|
            #binding.pry
            puts asteroids[1]["name"]
            
            puts asteroids[1]["nasa_jpl_url"]
        end
             
    end 

    
     

end 

#Api.get_profile 
 