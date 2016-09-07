class AddCorrectToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :correct, :int
  end
end
