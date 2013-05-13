class Subtheme < ActiveRecord::Base
  attr_accessible :description, :image, :name, :theme_id, :video_url

  validates :name, :uniqueness => true
  belongs_to :theme
  belongs_to :language
  has_many :words
  has_many :documents
end
