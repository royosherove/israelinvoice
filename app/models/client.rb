class Client < ActiveRecord::Base
  has_many :invoice

  attr_accessible :name, :address, :cd, :phone
end
