class AddClientFieldsToInvoice < ActiveRecord::Migration
  def self.up
    add_column :invoices, :name, :string
    add_column :invoices, :address, :string
    add_column :invoices, :cd, :string
    add_column :invoices, :phone, :string
  end

  def self.down
    remove_column :invoices, :phone
    remove_column :invoices, :cd
    remove_column :invoices, :address
    remove_column :invoices, :name
  end
end
