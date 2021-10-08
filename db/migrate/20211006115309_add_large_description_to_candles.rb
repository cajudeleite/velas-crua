class AddLargeDescriptionToCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :candles, :large_description, :string
  end
end
