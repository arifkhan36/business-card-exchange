class CreateBusinesscards < ActiveRecord::Migration[5.1]
  def change
    create_table :businesscards do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :businesscards, :user_id
  end
end
