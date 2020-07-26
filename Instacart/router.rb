require_relative 'controller'
require_relative 'user'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
    @user = User
  end

  def run
    puts
    puts '  * * * * * * * * * * * * * * * * * * * *'
    puts '  * ----------------------------------- *'
    puts '  * ------------- Instacart ----------- *'
    puts '  * ----------------------------------- *'
    puts '  * * * * * * * * * * * * * * * * * * * *'
    puts '  * * *                             * * *'
    puts '  * *     Please log in or sign up    * *'
    puts '  * *        for a new account        * *'
    puts '  * * *                             * * *'
    puts '  * * * * * * * * * * * * * * * * * * * *'
    puts '  *  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  *'
    puts '  * |            (1) Log In           | *'
    puts '  * |                 ~               | *'
    puts '  * |          (2) New Account        | *'
    puts '  * |                 ~               | *'
    puts '  * |        (3) Quit Instacart       | *'
    puts '  * |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| *'
    puts '  *                                     *'
    puts '  * * * * * * * * * * * * * * * * * * * *'
    while @running
      user_choice = gets.chomp
      route_action(user_choice)
    end
  end

  def invalid_entry
    'you have selected an invalid entry'
  end

  private #PRIVATE #PRIVATE #PRIVATE #PRIVATE #PRIVATE #PRIVATE #PRIVATE

  def route_action(user_choice)
    case user_choice
      when '1' then puts 'I will proceed with login'
      when '2'
        puts "Please choose a username:"
        username = gets.chomp
        puts "Please choose a password:"
        password = gets.chomp
        @user.new(username, password)
      when '3' then stop
      else invalid_entry
    end
  end

  def stop
    puts 'Okay... bye now!'
    sleep(1)
    @running = false
  end
end
