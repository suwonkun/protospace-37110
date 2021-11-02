class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   validates :name, presence: true
   validates :occupation, presence: true
   validates :profile, presence: true
   validates :position, presence: true

  has_many :comments
  has_many :prototypes
end
