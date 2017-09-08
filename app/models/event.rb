class Event < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_and_belongs_to_many :categories
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

  validates :location, presence: true
  validates :price, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }

  def self.order_by_price
    order :price
  end
end
