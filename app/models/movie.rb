class Movie < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  has_many_attached :photos
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
