class Organizer < ApplicationRecord
  has_many :festivals
  
  has_secure_password
end
