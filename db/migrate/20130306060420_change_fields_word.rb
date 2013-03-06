class ChangeFieldsWord < ActiveRecord::Migration
  def change
  	rename_column :words, :text, :text_english
  	add_column :words, :text_orginal, :string
  end
end
