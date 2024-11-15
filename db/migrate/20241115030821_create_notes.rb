class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.string :text
      t.integer :routine_id
      t.integer :user_id

      t.timestamps
    end
  end
end
