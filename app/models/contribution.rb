class Contribution < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :requirements
  has_many :skills, through: :requirements

  validates :project, presence: true
  validates :user, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ["open", "booked", "closed"] }
end
