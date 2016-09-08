class AddPuntuationToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :puntuation, :int
  end
end
