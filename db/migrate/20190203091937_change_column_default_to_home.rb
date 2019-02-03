class ChangeColumnDefaultToHome < ActiveRecord::Migration[5.0]
  def change
    change_column :homes, :rent, :integer, null: false
    change_column :homes, :age, :integer, null: false
  end
end
