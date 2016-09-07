class AddQuizIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :quiz, foreign_key: true
  end
end
