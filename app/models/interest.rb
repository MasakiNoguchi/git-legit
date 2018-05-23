class Interest < ApplicationRecord
  belongs_to :user
  belongs_to :contribution

  validates :user, presence: true
  validates :contribution, presence: true
  validates :user, uniqueness: { scope: :contribution }

  def user_name
    "#{self.user.first_name} #{self.user.last_name}"
  end
end
