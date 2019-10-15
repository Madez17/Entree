class LimitStringToRoles < ActiveRecord::Migration[5.2]
  def change
    change_column :roles, :text, :string, :limit => 70
  end
end
