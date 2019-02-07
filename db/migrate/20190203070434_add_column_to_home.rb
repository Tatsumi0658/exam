class AddColumnToHome < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :name, :string
  end
end
