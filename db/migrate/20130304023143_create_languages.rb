class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name_original
      t.string :name_english
      t.string :description

      t.timestamps
    end
  end
end
