class CreateSubthemes < ActiveRecord::Migration
  def change
    create_table :subthemes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :video_url
      t.integer :theme_id

      t.timestamps
    end
  end
end
