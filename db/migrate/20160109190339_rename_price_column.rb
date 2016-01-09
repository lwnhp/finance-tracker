class RenamePriceColumn < ActiveRecord::Migration
  def change
    rename_column :stocks, :price, :last_price
  end
end
