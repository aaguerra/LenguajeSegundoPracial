class Question < ApplicationRecord
  #belongs_to :quiz
  validates :description, presence: true,uniqueness: true
  validates :answer_one, presence: true
  validates :answer_two, presence: true
  validates :answer_three, presence: true
  validates :answer_four, presence: true
end
