class ChangeFieldsWord < ActiveRecord::Migration
  def change
  	rename_column :words, :text, :text_english
  	add_column :words, :text_original, :string
  end
end
