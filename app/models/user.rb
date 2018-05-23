class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :knowledges, dependent: :destroy
  has_many :skills, through: :knowledges
  has_many :contributions
  has_many :projects
  has_many :interests

  def full_name
    "#{first_name} #{last_name}"
  end
end
