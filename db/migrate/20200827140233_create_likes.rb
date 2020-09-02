class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :OpinionId
      t.integer :UserId

      t.timestamps
    end
  end
end
