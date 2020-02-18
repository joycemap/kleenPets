class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :listing
         validates :email, uniqueness: true
         validates :password, presence: true, length: { minimum: 6, maximum: 20 }
end