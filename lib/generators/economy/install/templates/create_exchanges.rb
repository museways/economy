class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :from
      t.string :to
      t.decimal :rate, precision: 24, scale: 12

      t.timestamps
    end

    add_index :exchanges, %i(from to)
  end
end
