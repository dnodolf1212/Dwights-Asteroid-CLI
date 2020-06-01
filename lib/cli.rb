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
    print_choice_message
    id = get_choice 
  end 

  def print_all
    num = 0 
    Asteroids.all.each {|rock| puts "#{num +=1}.   #{rock.name}"}
  end 

  def print_choice_message
    puts "Choose an asteroid by number for more information!!"
  end 

  def get_choice
    gets.chomp
  end 

  

    
                
end 
