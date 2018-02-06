class Animals::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection configurations["#{Rails.env}_animals"]
end
