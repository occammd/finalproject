class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :mrn
      t.string :name
      t.string :location
      t.date :dob

      t.timestamps
    end
  end
end
