class AddUserIdToQuizzes < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzes, :references, :user
  end
end
