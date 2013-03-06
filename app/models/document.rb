class Document < ActiveRecord::Base
  attr_accessible :description, :language_id, :subtheme_id, :theme_id, :url, :word_id

  validates :url, :uniqueness => true
  
  belongs_to :language
  belongs_to :theme
  belongs_to :subtheme
  belongs_to :word
end
