class Patient < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :doctors, :through => :appoitments
 
  validates :avatar, presence: true
validates :firstname, presence: true , length: {minimum: 4, maximum: 20}  
validates :lastname, presence: true , length: {minimum: 4, maximum: 20} 
validates :phone, presence: true , length: {minimum: 8, maximum: 12}, uniqueness: true
  has_one_attached :avatar

end
