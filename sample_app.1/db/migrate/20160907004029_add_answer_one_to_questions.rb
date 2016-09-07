class AddAnswerOneToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer_one, :string
  end
end
