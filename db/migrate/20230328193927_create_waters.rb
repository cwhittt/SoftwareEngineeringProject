class CreateWaters < ActiveRecord::Migration[6.1]
  def change
    create_table :waters do |t|
      t.string :title
      t.string :unit
      t.float :amount
      t.timestamp :time

      t.timestamps
    end
  end
end
