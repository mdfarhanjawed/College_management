class ChangeColumnNote < ActiveRecord::Migration[5.0]
  def change
  	change_column :notes, :body, :text
  end
end
