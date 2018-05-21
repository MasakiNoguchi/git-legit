class Skill < ApplicationRecord
  has_many :requirements
  has_many :knowledges
end
