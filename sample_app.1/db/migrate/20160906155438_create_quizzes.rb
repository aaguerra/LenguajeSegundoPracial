class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :description
      t.string :pin

      t.timestamps
    end
  end
end
