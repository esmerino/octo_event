class Event < ApplicationRecord
  validates :data, presence: true
end
