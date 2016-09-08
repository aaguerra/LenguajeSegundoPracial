class Question < ApplicationRecord
  #belongs_to :quiz
  validates :description, presence: true,length: {minimum: 5}
  validates :answer_one, presence: true
  validates :answer_two, presence: true
  validates :answer_three, presence: true
  validates :answer_four, presence: true
  validates_format_of :description, :with => /\A^([^0-9]*)$+\z/, :message => "Invalid! Alphanumerics only."
end
