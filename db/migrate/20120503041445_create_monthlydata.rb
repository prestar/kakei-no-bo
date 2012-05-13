class CreateMonthlydata < ActiveRecord::Migration
  def change
    create_table :monthlydata do |t|
      t.integer :value
      t.date :date
      t.integer :item_id
      t.timestamps
    end
  end
end
