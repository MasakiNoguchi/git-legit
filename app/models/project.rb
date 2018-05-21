class Project < ApplicationRecord
  belongs_to :user
  has_many :contributions

  validates :title, presence: true
  validates :description, presence: true
  validates :github_url, format: { with: /(?:git|ssh|https?|git@[-\w.]+):(\/\/)?(.*?)(\.git)(\/?|\#[-\d\w._]+?)$/, "Please enter valid GitHub url"}
  validates :user, presence: true
end
