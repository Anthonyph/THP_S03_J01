require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :title, :duration
	@attendees = []

	def initialize(start_date_to_save, event_duration, event_title, event_attendees) 
	@start_date = Time.parse(start_date_to_save)
	@duration = event_duration #minutes
	@title = event_title	
	@attendees = event_attendees
	end

	def postpone_24h
	@start_date + 24*60*60	
	end

	def end_date
	@start_date + @duration*60
	end

	def is_past?
	@start_date < Time.now 
	end 
	
	def is_future?
	@start_date > Time.now
	end

	def is_soon?
		time_now_plus_30 = Time.now + 30*60
	@start_date < time_now_plus_30
	end

	def to_s 
	puts "> Titre : #{@title}"
	puts "> Date de début : #{@start_date}"
	puts "> Durée : #{@duration}"
	puts "> Invités : #{@attendees}"

end

#start_date
#@duration
#@title
#@attendees

end
