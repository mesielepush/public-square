# frozen_string_literal: true

# This shiny device polishes bared foos
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :listenings

  validates :email, presence: true, uniqueness: true,
                    length: { minimum: 4, maximum: 35 },
                    confirmation: { case_sensitive: false }

  validates :description, length: { maximum: 250 }
end
