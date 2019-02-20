class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
   def build_network(arg)
    network = Network.new(arg)
    network.show = self
  end
end