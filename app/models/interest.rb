class Interest < ApplicationRecord
  belongs_to :user
  belongs_to :contribution

  validates :user, presence: true
  validates :contribution, presence: true
  validates :user, uniqueness: { scope: :contribution }

end
