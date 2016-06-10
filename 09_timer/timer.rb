class Timer
	attr_accessor :seconds
	
	def initialize (seconds = 0)
		@seconds = seconds
	end

	def time_string
		s = seconds
		hrs = s / 3600
		s -= hrs * 3600
		mins = s / 60
		s -= mins * 60
		"%02d:%02d:%02d" % [hrs,mins,s]
	end
end