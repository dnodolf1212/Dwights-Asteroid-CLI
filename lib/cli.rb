class Cli

  def run
    welcome
    Api.get_profile
    main
  end

  def welcome
    puts "Hi, Let's check out today's Asteroids and Near-Earth-Objects:"
  end

  def main
    print_all
  end 

  def print_all
    num = 0 
    Asteroids.all.each {|rock| puts "#{num +=1}.   #{rock.name}"}
  end 
  

    
                
end 
