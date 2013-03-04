class Theme < ActiveRecord::Base
  attr_accessible :description, :image, :language_id, :name

  belongs_to :language
  has_many :themes
  has_many :words, :through => :theme
end
