class User < ApplicationRecord
    has_many :reservations
    has_many :studios, through: :reservations
    
    has_secure_password

     validates :username, presence: true
     validates :username, uniqueness: true
     validates :username, length: { minimum: 4}
     validates :email, presence: true
     validates :email, uniqueness: true
     validates :first_name, presence: true
     validates :last_name, presence: true
     validates :street_address, presence: true
     validates :city, presence: true
     validates :state, presence: true
     validates :zip_code, presence: true

     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end

