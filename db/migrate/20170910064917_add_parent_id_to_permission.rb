class AddParentIdToPermission < ActiveRecord::Migration[5.0]
  def change
  	add_column :permissions, :parent_id, :integer
  end
end
