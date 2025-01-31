class Project < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :logo, presence: true
end
