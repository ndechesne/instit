class Eleve < ActiveRecord::Base
  attr_accessible :addr, :birth, :firstName, :lastName
end
