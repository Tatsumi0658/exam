class ChangeColumnToHome < ActiveRecord::Migration[5.0]
  def change
    change_column :homes, :rent, :integer, null: false, default: 0
    change_column :homes, :address, :string, null: false
    change_column :homes, :age, :integer, null: false, default: 0
  end
end
