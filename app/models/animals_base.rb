class AnimalsBase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :animals
end
