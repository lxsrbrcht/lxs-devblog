class Project < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :logo, presence: true
end
