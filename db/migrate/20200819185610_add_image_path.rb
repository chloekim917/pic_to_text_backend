class AddImagePath < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :image_path, :string
  end
end
