class Users < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :username
      u.string :first_name
      u.string :last_name

      u.timestamps
    end
  end
end
