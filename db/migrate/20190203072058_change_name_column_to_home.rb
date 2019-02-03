class ChangeNameColumnToHome < ActiveRecord::Migration[5.0]
  def change
    change_column :homes, :name, :string, null: false
  end
end
