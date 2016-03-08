require_relative('./models/jedi.rb')
require_relative('./models/lightsaber.rb')

require('pry-byebug')

jedi = Lightsaber.all.first.jedi

binding.pry
nil
