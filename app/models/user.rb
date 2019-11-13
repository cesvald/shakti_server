class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :roles
	has_many :profiles, through: :roles
	
	Profile.all.each do |profile|
    if profile.name == "admin"
      define_method "#{profile.name}?" do
  			return profiles.where(name: profile.name).any?
  		end
  	else
  	  define_method "#{profile.name}?" do
  	    return profiles.where(name: profile.name).any? || admin?
  	  end
  	end
  end
end
