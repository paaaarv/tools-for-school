class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:normal, :admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :supplies
  has_many :categories, through: :supplies



  def admin?
    if self.email[-3..-1] == "edu" || self.email[-3..-1] == "org"
      true
    else
      false
    end
  end
end
