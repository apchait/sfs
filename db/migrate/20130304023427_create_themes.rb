class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.string :name_original
      t.string :description
      t.string :image
      t.integer :language_id

      t.timestamps
    end
  end
end
