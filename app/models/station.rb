class Station < ApplicationRecord
  belongs_to :home, dependent: :destroy
end
