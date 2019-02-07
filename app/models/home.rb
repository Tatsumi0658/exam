class Home < ApplicationRecord
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  has_many :stations, inverse_of: :home
  accepts_nested_attributes_for :stations, allow_destroy: true
end
