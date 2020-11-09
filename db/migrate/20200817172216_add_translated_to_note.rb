class AddTranslatedToNote < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :translated, :string
  end
end
