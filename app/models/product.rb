class Product < ApplicationRecord
  has_many :line_items

  mount_uploader :image, ImageUploader

  validates :price, length: { maximum:7 }
end
