class Invoice < ActiveRecord::Base
  def total_items
    self.items.inject {|v,i| v+i.amount}
  end
  def total_amount
    self.items.inject {|v,i| v+i.total_amount}
  end
  has_many  :items

  belongs_to :client

  attr_accessible :client_id

  accepts_nested_attributes_for :client
  accepts_nested_attributes_for :items
end
