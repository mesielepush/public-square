# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  avatar                 :string  default("https://bit.ly/2J6jUqe"), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  background             :string  default("https://i.imgur.com/moRYtBi.png")
#  description            :string           default("Describe yourself...")
#

# This shiny device polishes bared foos
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :listeners
  has_many :listenings

  validates :email, presence: true, uniqueness: true,
                    length: { minimum: 4, maximum: 35 }, confirmation: { case_sensitive: false }
  validates :description, length: { maximum: 250 }
end
