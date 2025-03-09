class CreateCoins < ActiveRecord::Migration[8.0]
  def change
    create_table :coins do |t|
      t.string :market_code
      t.string :currency
      t.string :korean_name
      t.string :english_name
      t.decimal :prev_closing_price
      t.decimal :opening_price
      t.decimal :high_price
      t.decimal :low_price
      t.decimal :trade_price
      t.decimal :signed_change_price
      t.decimal :signed_change_rate
      t.string :trade_datetime

      t.timestamps
    end
  end
end
