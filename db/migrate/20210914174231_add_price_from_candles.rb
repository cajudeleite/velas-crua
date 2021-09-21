class AddPriceFromCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :candles, :price, :float
  end
end
