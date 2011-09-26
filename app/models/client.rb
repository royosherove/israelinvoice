class Client < ActiveRecord::Base
  has_many :invoices

  attr_accessible :name, :address, :cd, :phone
end
