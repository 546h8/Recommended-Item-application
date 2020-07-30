class Item < ApplicationRecord
  # validates_associated :images
  # validates :images, presence:true
  # has_many :images,dependent: :destroy
  # belongs_to :category
  # accepts_nested_attributes_for :images, allow_destroy: true
  enum category: {衣類: 0,インテリア・住まい: 1 ,本・音楽・ゲーム: 2 , おもちゃ・ホビー: 3 ,コスメ・香水・美容: 4 ,家電・スマホ・カメラ: 5 ,スポーツ・レジャー: 6 ,ハンドメイド: 7 ,自動車・バイク: 8 ,食べ物: 9 ,その他: 10}
  mount_uploader :image, ImageUploader
  validates :rating, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
