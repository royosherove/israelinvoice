class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :cn
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
