class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.integer :user_id
      t.string :folder_name

      t.timestamps
    end
  end
end
