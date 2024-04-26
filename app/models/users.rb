class Users < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :firtname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :poste, presence: true
  validates :phone, presence: true

  has_many :sessions

end
