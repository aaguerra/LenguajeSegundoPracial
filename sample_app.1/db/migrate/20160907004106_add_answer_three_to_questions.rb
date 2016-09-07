class AddAnswerThreeToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer_three, :string
  end
end
