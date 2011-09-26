class Item < ActiveRecord::Base
  def total_amount
    
  end
  belongs_to :invoice

  attr_accessible :amount, :price, :desc, :tax
end
