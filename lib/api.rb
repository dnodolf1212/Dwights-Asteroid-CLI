
class Api
    todays_date = Time.now.to_s.split(" ")[0]
    puts "api class loaded"
    KEY = ENV["API_KEY"]
    
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=DEMO_KEY"
    
    BASE_URL =  "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{todays_date}&end_date=#{todays_date}&api_key=FIZam8paaqjNx2IjOKpRwCZymLdMtlrvcDaq5jSX"
    
    def self.get_profile
        todays_date = Time.now.to_s.split(" ")[0]
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)
        data["near_earth_objects"].each do |date|
            date.each do |asteroid, name|
            puts asteroid["name"].to_i
            binding.pry

            

            
            #puts asteroids[1]["name"]
            #puts asteroids[1]["nasa_jpl_url"]
            #Asteroids.new(name, id)
            end 
            end 
        end
    end 

           
            
             
    

    
     

end 

#Api.get_profile 
 