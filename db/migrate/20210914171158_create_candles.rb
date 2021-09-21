class CreateCandles < ActiveRecord::Migration[6.0]
  def change
    create_table :candles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :stock
      t.string :description

      t.timestamps
    end
  end
end
