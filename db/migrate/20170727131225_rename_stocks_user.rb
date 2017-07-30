class RenameStocksUser < ActiveRecord::Migration
  def change
    rename_column :stocks, :user, :user_id
  end
end
