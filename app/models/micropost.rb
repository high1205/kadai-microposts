class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  # has_many :likings, through: :favorites, source: :user, dependent: :destroy
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  # お気に入り機能
  
  # def like(user)
  #   self.favorites.find_or_create_by(user_id: user.id)
  # end
  
  # def unlike(user)
  #   favorite = self.favorites.find_by(user_id: user.id)
  #   favorite.destroy if favorite
  # end
  
  # def liking?(user)
  #   self.likings.include?(user)
  # end
  
end
