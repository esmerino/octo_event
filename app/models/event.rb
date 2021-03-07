class Event < ApplicationRecord
  validates :data, presence: true
  scope :by_issue, ->(issue) { where("data ->'issue'->>'number' = ?", issue.to_s) }
end
