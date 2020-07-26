class View
  def ask_user_for(stuff)
    @login = Login
    puts
    puts
    puts "   * * * * * * * * * * * * * * * * * * * *"
    puts "   * ----------------------------------- *"
    puts "   * ------- Welcome to Instacart  ----- *"
    puts "   * ----------------------------------- *"
    puts "   * * * * * * * * * * * * * * * * * * * *"
    puts "   *                                     *"
    puts "   *      Please log in or sign up       *"
    puts "   *          for a new account          *"
    puts "   *                                     *"
    puts "   *  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  *"
    puts "   * |                                 | *"
    puts "   * |            (1) Log In           | *"
    puts "   * |                 ~               | *"
    puts "   * |          (2) New Account        | *"
    puts "   * |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| *"
    puts "   * * * * * * * * * * * * * * * * * * * *"
    selection = gets.chomp
    @login.user_choice(selection)
  end

  def logged_in(user)
    puts
    puts
    puts "   Welcome back, #{user}"
    puts "   * ----------------------------------- *"
    puts "   * * * * * * * * * * * * * * * * * * * *"
    puts "   *                                     *"
    puts "   *         Please choose from          *"
    puts "   *       the following options:        *"
    puts "   *                                     *"
    puts "   *  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  *"
    puts "   * |                                 | *"
    puts "   * | (1) See items that are for sale | *"
    puts "   * |                 ~               | *"
    puts "   * |    (2) See your current cart    | *"
    puts "   * |                 ~               | *"
    puts "   * |       (3) Go to check-out       | *"
    puts "   * |                 ~               | *"
    puts "   * |          (4) About us           | *"
    puts "   * |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| *"
    puts "   * * * * * * * * * * * * * * * * * * * *"

    selection = gets.chomp
  end

  landing
end
