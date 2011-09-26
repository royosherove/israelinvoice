class Invoice < ActiveRecord::Base
  def total_items
    self.items.inject {|v,i| v+i.amount}
  end
  def total_amount
    self.items.inject {|v,i| v+i.total_amount}
  end
end
