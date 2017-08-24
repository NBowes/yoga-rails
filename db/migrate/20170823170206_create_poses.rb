class CreatePoses < ActiveRecord::Migration[5.0]
  def change
    create_table :poses do |t|
      t.string :name
      t.string :difficulty
      t.text :description
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
