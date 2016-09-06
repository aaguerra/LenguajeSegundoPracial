class Quiz < ApplicationRecord
  #validations rails
  validates :description, presence: true
  #belongs_to :user
end
