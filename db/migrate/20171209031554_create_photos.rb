class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :url
      t.string :comment
      t.references :album

      t.timestamps
    end
  end
end
