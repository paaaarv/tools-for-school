require 'pry'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:normal, :admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:google_oauth2]

  has_many :supplies
  has_many :categories, through: :supplies



  def admin?
    if self.email[-3..-1] == "edu" || self.email[-3..-1] == "org"
      true
    else
      false
    end
  end


  def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
   end
 end


end
