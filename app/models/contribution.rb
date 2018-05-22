class Contribution < ApplicationRecord
  belongs_to :project
  belongs_to :user, optional: true
  has_many :requirements, dependent: :destroy
  has_many :skills, through: :requirements

  validates :project, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ["open", "booked", "closed"] }
end
