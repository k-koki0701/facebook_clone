class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, {presence: true, length: {maximum: 140}}
  belongs_to :user
  has_many :comments, dependent: :destroy
end
