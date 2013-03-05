class Case < ActiveRecord::Base
  attr_accessible :anesthesia_id, :case_cart, :finished, :finished_at, :notes, :operation_date, :or_room, :patient_id, :position, :started, :started_at, :surgeon_id, :surgery, :time_estimate, :triage
  belongs_to :patient
  belongs_to :surgeon, class_name: 'User'
  belongs_to :anesthesia, class_name: 'User'
end
