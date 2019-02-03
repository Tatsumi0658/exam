class AddHomeRefToStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :home, foreign_key: true
  end
end
