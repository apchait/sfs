class Language < ActiveRecord::Base
  attr_accessible :description, :name_original, :name_english

  has_many :themes
  has_many :words, :through => :themes
end
