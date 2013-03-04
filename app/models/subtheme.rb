class Subtheme < ActiveRecord::Base
  attr_accessible :description, :image, :name, :theme_id, :video_url

  belongs_to :theme
  has_many :words
end
