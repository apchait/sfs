class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :name_original
      t.string :description

      t.timestamps
    end
  end
end
