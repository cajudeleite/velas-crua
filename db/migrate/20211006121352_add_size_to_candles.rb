class AddSizeToCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :candles, :size, :integer, default: 1
  end
end
