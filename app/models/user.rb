class User < ActiveRecord::Base

  validates_presence_of :username
  validates_uniqueness_of :username


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :token_authenticatable

  has_many :auth_tokens
end
