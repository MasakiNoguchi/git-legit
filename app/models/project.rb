class Project < ApplicationRecord
  belongs_to :user
  has_many :contributions

  validates :title, presence: true
  validates :description, presence: true
  validates :github_url, allow_blank: true, format: { with: /(?:git|ssh|https?|git@[-\w.]+):(\/\/)?(.*?)(\.git)(\/?|\#[-\d\w._]+?)/, message: "Please enter valid GitHub url" }
  validates :user, presence: true
end
