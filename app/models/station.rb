class Station < ApplicationRecord
  belongs_to :home, dependent: :destroy, inverse_of: :stations
end
