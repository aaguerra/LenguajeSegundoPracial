class AddAnswerIdToResponses < ActiveRecord::Migration[5.0]
  def change
    add_reference :responses, :answer, foreign_key: true
  end
end
