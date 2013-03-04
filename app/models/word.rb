class Word < ActiveRecord::Base
  attr_accessible :audio, :description, :image, :language_id, :pdf, :subtheme_id, :text, :text_image

  belongs_to :language
  belongs_to :subtheme
end
