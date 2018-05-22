class Knowledge < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :level, presence: true, inclusion: { in: ["basic","intermediate","advanced"] }
  validates :user, presence: true
  validates :skill, presence: true
  validates :skill, uniqueness: { scope: :user }
end
