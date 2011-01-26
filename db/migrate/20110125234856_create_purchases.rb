class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.date :date
      t.decimal :amount
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
