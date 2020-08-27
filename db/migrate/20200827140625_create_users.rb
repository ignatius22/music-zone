class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :Fullname
      t.string :Username
      t.string :Photo
      t.string :CoverImage

      t.timestamps
    end
  end
end
