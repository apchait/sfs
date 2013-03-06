class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :text_english
      t.string :text_original
      t.string :description
      t.string :text_image
      t.string :image
      t.string :audio
      t.string :pdf
      t.integer :subtheme_id
      t.integer :language_id

      t.timestamps
    end
  end
end
