class Routine < ApplicationRecord
  belongs_to :exercise 
  belongs_to :user
  has_many :notes
end
