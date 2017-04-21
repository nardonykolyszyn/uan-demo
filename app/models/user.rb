class User < ApplicationRecord
  after_initialize :set_role_default, :if => :new_record?
  dragonfly_accessor :image
  has_many :notices
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def set_role_default
  	self.role ||= :user
  end
end
