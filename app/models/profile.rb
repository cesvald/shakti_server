class Profile < ApplicationRecord
  has_many :roles
	has_many :users, through: :roles
	
	Profile.all.each do |profile|
	  define_singleton_method profile.name.to_sym do
  		Profile.where(name: profile.name.to_sym).first
  	end
	end
end