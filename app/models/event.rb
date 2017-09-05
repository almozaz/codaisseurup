class Event < ApplicationRecord
  belongs_to :user

  validates :location, presence: true
  validates :price, presence: true
  validates :includes_food, presence: true
  validates :includes_drinks, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
end
