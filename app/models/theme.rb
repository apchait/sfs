class Theme < ActiveRecord::Base
  attr_accessible :description, :image, :language_id, :name

  validates :name, :uniqueness => true
  belongs_to :language
  has_many :subthemes
  has_many :words, :through => :subtheme
  has_many :documents
end
