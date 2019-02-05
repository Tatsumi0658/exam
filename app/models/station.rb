class Station < ApplicationRecord
  validates :line, presence: true
  validates :station, presence: true
  validates :walk, presence: true
  belongs_to :home, dependent: :destroy, inverse_of: :stations
end
