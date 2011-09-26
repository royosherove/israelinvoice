class Invoice < ActiveRecord::Base
  has_many  :items

  belongs_to :client

  attr_accessible :client_id

  accepts_nested_attributes_for :client
  accepts_nested_attributes_for :items
end
