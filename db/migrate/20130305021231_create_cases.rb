class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.date :operation_date
      t.integer :position
      t.integer :patient_id
      t.integer :surgeon_id
      t.integer :anesthesia_id
      t.string :surgery
      t.string :triage
      t.string :case_cart
      t.string :or_room
      t.integer :time_estimate
      t.text :notes
      t.boolean :finished
      t.boolean :started
      t.date :started_at
      t.date :finished_at

      t.timestamps
    end
  end
end
