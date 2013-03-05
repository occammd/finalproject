class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :cell_phone
      t.string :email
      t.string :password
      t.integer :staff_type

      t.timestamps
    end
  end
end
