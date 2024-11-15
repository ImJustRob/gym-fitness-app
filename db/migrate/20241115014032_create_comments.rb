class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :exercise_id
      t.integer :user_id

      t.timestamps
    end
  end
end
