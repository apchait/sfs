class Word < ActiveRecord::Base
  attr_accessible :audio, :description, :image, :language_id, :pdf, :subtheme_id, :text_english, :text_image, :text_original

  belongs_to :language
  belongs_to :subtheme
end
