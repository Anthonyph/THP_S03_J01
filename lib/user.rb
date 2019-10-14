require "pry"

class User
	attr_accessor :email
	attr_reader :age
	@@user_count = 0

	def initialize(email_to_save, age_to_save)
	@email = email_to_save
	@age = age_to_save
	@@user_count = @@user_count + 1
	end
end
	binding.pry 
	put "fin du fichier"