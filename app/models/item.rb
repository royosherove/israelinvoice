class Item < ActiveRecord::Base
  belongs_to :invoice

  attr_accessible :amount, :price, :desc, :tax
end
