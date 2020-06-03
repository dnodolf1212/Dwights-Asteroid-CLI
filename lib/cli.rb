
require 'pry'
class Cli

  def run
    print_welcome
    Api.get_profile
    main
  end
  
  def main
    print_all
    print_choice_message
    num = valid_choice?(get_choice)
    go_to_info(num)
    print_keep_exploring?
    explore?(get_choice)
  end 
  
  
  def print_welcome
    puts "Hi, Let's check out today's Asteroids and Near-Earth-Objects!"
  end

  def print_all
    num = 0 
    Asteroid.all.each {|rock| puts "#{num +=1}. #{rock.name}"}
  end 

  def print_choice_message
    puts "Choose an asteroid by number for more information!!"
  end 
  
  def print_warning
    puts "Oops, Invalid selection."
  end 

  def print_keep_exploring?
    puts "Do you want to keep exploring? (y/n)"
  end

  def print_goodbye
    puts "Thanks for using the Asteroid CLI. Come back tomorrow for new Asteroids and Near-Earth_Objects!"
  end
   
  def get_choice
    gets.chomp
  end 

  def valid_choice?(num)
    num = num.to_i
    if num < 1 || num > Asteroid.all.size
      print_warning
      sleep 1.5
      main
    end
    num
  end  

  def go_to_info(num)
      puts "fetching details on your selection"
      sleep 1.5
      selected_asteroid = Asteroid.find_by_num(num)
      puts "NAME: #{selected_asteroid.name}"
      puts "MAXIMUM SIZE: #{selected_asteroid.max_size} ft. in diameter."
      puts "SPEED: #{selected_asteroid.speed} MPH!!"
  end
  
  def explore?(choice)
    if choice == "y" 
      main
    else
      print_goodbye
      exit
    end
  end 

end 

  

    
                 
