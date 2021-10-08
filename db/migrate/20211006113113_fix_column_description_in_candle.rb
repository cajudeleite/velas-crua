class FixColumnDescriptionInCandle < ActiveRecord::Migration[6.0]
  def change
    rename_column :candles, :description, :short_description
  end
end
