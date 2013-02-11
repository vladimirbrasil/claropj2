class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :data
      t.decimal :value
      t.string :phone

      t.timestamps
    end
  end
end
