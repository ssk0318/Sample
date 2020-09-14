class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :model, presence: true,
                  length: { minimum: 1 }
    
  enum company: [:boing, :airbus, :kawasaki]
  #上記に0から数字定義してもOK,このままだと左から012
end
