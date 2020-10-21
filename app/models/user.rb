class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_profile, dependent: :destroy

  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :user_profile, allow_destroy: true, reject_if: proc{|att| att['user_id'].blank? }
end
