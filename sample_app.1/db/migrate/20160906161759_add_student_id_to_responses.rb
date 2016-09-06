class AddStudentIdToResponses < ActiveRecord::Migration[5.0]
  def change
    add_reference :responses, :student, foreign_key: true
  end
end
