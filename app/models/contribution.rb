class Contribution < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :requirements
end
