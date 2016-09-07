class AddAnswerTwoToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer_two, :string
  end
end
