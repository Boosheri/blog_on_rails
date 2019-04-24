class User < ApplicationRecord
  has_many :post, dependent: :nullify
  has_many :comment, dependent: :nullify

  has_secure_password

  validates(:email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)

end
