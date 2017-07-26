class Stocks < ActiveRecord::Migration
  def change
    create_table :stocks do |s|
      s.integer :user
      s.string :code
      s.string :name
      s.string :market
      s.decimal :buying_price
      s.decimal :current_price
      s.date :bought_at
      s.timestamps
    end
  end
end
