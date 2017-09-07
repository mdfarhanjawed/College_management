class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :rollnumber
      t.string :subject
      t.string :room_no

      t.timestamps
    end
  end
end
