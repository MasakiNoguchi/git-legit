class Project < ApplicationRecord
  belongs_to :user
  has_many :contributions, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :github_url, allow_blank: true, format: { with: /(?:git|ssh|https?|git@[-\w.]+):(\/\/)?(.*?)(\.git)(\/?|\#[-\d\w._]+?)/, message: "Please enter valid GitHub url" }
  validates :user, presence: true

  def skills
    skills = []
    self.contributions.each do |contribution|
      contribution.skills.each { |skill| skills << skill }
    end
    skills.uniq
  end

  def interest?
    array = self.contributions.select { |contribution| contribution.interests.length > 0 && contribution.status == "open" }
    !array.empty?
  end

  include AlgoliaSearch

  algoliasearch do
    attribute :title, :description
  end
end
