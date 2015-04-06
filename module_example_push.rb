class GymPush
	def up
		40
	end
end

class DojoPush # with same name (Push) the second will always override the first
	def up
		30
	end
end

module Gym
	class Push
		def up
			40
		end
	end
end

module Dojo
	class Push # now it will not be rewritten
		def up
			30
		end
	end
end

dojo = Dojo::Push.new
