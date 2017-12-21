class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :progresses

  validates :name, :desc, :presence => true

# 'enum' allows only the values defined here for 'action' and 'frequency'; ex, ':do' is index 0
  # enum action: [:do, :dont]
  # enum frequency: [:daily, :weekly, :biweekly, :triweekly]
end
