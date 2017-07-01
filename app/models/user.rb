class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :comments

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :password, presence: true, length: { minimum: 8 }
end
