require "pry"

class User
	attr_accessor :email
	attr_accessor :age
	@@user_count = 0
	@@all_users = []
	@@all_users_emails = []
	
	def initialize(email_to_save, age_to_save)
	@email = email_to_save
	@age = age_to_save
	@@user_count = @@user_count + 1
	@@all_users << self 
	@@all_users_emails << self.email 
	end

	def self.count
	return @@user_count
	end

	def self.all
	return @@all_users
	end 

	def self.find_by_email(email_to_find)	
	i = 0
		while email_to_find != @@all_users[i].email
			i=i+1
		end
	puts "le User à #{@@all_users[i].age} ans"
	
	end
#binding.pry
end
#binding.pry
	puts "fin du fichier"
