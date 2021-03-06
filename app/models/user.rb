class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
        has_many :items

  validates :name, presence: true, uniqueness: true 
  validates :email, presence: true, uniqueness: true 

  # def posts
  # return Item.where(user_id: self.id)
  # end

end
