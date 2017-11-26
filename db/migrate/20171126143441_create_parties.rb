class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :title
      t.date :held_at
			t.references :user

      t.timestamps
    end
  end
end
