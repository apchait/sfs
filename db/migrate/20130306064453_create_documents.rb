class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :language_id
      t.integer :theme_id
      t.integer :subtheme_id
      t.integer :word_id
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
