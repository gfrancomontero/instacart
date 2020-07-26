require_relative "controller"
require_relative "repository"
require_relative "router"

csv_file = File.join(__dir__, 'inventory.csv')
repository = Repository.new(csv_file)
controller = Controller.new(repository)

router = Router.new(controller)

#start the app
router.run
