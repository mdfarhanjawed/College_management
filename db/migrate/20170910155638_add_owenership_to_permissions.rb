class AddOwenershipToPermissions < ActiveRecord::Migration[5.0]
  def change
    add_column :permissions, :ownership, :string, default: :owner
  end
end
