
require 'pry'
require 'rainbow'
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
    puts Rainbow("Hi, Let's check out today's Asteroids and Near-Earth-Objects!").red.bright
  end

  def print_all
    num = 0 
    Asteroid.all.each {|rock| puts Rainbow("#{num +=1}. #{rock.name}").green.bright}
  end 

  def print_choice_message
    puts Rainbow("Choose an asteroid by number for more information!!").red.bright
  end 
  
  def print_warning
    puts Rainbow("Oops, Invalid selection.").magenta
  end 

  def print_keep_exploring?
    puts Rainbow("Do you want to keep exploring? (y/n)").red.bright
  end

  def print_goodbye
    puts Rainbow("Thanks for using the Asteroid CLI. Come back tomorrow for new Asteroids and Near-Earth_Objects!").yellow.bright
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
      puts Rainbow("fetching details on your selection").red.bright
      sleep 1.5
      selected_asteroid = Asteroid.find_by_num(num)
      puts Rainbow("NAME: #{selected_asteroid.name}").blue
      puts Rainbow("MAXIMUM SIZE: #{selected_asteroid.max_size.round(1)} ft. in diameter.").blue
      puts Rainbow("SPEED: #{selected_asteroid.speed.to_i.round(1)} MPH!!").blue
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

  

    
                 
