class CreateNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks do |t|
      t.integer :user_id
      t.string :notebook_name

      t.timestamps
    end
  end
end
