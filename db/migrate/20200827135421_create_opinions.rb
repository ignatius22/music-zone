class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.integer :AuthorId
      t.string :Text

      t.timestamps
    end
  end
end
