class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :knowledges, dependent: :destroy
  has_many :skills, through: :knowledges
  has_many :projects, dependent: :destroy
  has_many :interests, dependent: :destroy
  has_many :contributions, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  def full_name
    "#{first_name} #{last_name}"
  end
end
