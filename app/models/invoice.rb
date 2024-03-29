class Invoice < ActiveRecord::Base
  def total_items
    self.items.inject {|v,i| v+i.amount}
  end
  def total_amount
    self.items.inject {|v,i| v+i.total_amount}
  end
  has_many  :items

  attr_accessible :name, :address, :cd, :phone

  accepts_nested_attributes_for :items
end
