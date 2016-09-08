class AddPuntuationToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :puntuation, :int
  end
end
