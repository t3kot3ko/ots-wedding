class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|
      t.references :user, foreign_key: true
      t.references :party, foreign_key: true
      t.boolean :visited
      t.boolean :parid

      t.timestamps
    end
  end
end
