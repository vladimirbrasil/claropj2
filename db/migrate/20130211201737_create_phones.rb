class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.string :user
      t.string :email

      t.timestamps
    end
  end
end
