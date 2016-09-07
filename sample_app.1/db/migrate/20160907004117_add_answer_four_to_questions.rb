class AddAnswerFourToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer_four, :string
  end
end
