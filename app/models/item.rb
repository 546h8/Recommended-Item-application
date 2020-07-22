class Item < ApplicationRecord
  validates_associated :images
  validates :images, presence:true
  has_many :images,dependent: :destroy
  belongs_to :category
  accepts_nested_attributes_for :images, allow_destroy: true
end
