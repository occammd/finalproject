class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.integer :anesthesia_id
      t.string :case_cart
      t.boolean :finished
      t.datetime :finished_at
      t.text :notes
      t.date :operation_date
      t.string :or_room
      t.integer :patient_id
      t.integer :position
      t.boolean :started
      t.datetime :started_at
      t.integer :surgeon_id
      t.string :surgery
      t.integer :time_estimate
      t.string :triage

      t.timestamps
    end
  end
end
