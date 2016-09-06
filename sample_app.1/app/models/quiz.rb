class Quiz < ApplicationRecord
  #validations rails
  validates :description, presence: true, uniqueness: true, length: {minimum: 10}
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  #http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates_format_of
  belongs_to :user
  #has_many :questions
end
