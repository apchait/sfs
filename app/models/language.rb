class Language < ActiveRecord::Base
  attr_accessible :description, :name_original, :name

  validates :name, :uniqueness => true
  has_many :themes
  has_many :words, :through => :themes
  has_many :documents
end
