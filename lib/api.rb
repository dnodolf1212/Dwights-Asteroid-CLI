
class Api
    todays_date = Time.now.to_s.split(" ")[0]
    API_KEY = ENV["API_KEY"]
    
    BASE_URL =  "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key= API_KEY"
    
    def self.get_profile 
        todays_date = Time.now.to_s.split(" ")[0]
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)
        
        data["near_earth_objects"][todays_date].each do |asteroid|
            name = asteroid["name"]
            max_size = asteroid["estimated_diameter"]["feet"]["estimated_diameter_max"]
            speed = asteroid["close_approach_data"][0]["relative_velocity"]["miles_per_hour"]
            Asteroid.new(name, max_size, speed)
        end 
    end 

    


end 

 