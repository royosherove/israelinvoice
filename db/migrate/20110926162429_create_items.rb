class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.float :amount
      t.float :price
      t.string :desc
      t.integer :tax

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
