class Requirement < ApplicationRecord
  belongs_to :skill
  belongs_to :contribution

  validates :contribution, presence: true
  validates :skill, presence: true
  validates :skill, uniqueness: { scope: :contribution }
end
