module Geometry 
	def perimeter
		sides.reduce(:+) # so that you don't break the DRY rule, you'd have to add this to each shape class 
	end
end

class Rectangle
	include Geometry

	def initializ(length, width)
		@length = length
		@width = width
	end

	def sides
		[@length, @width, @length, @width] 
	end
end

class Square
	include Geometry # a mixin so that you can use from that particular module

	def initialize(side)
		@side = side
	end

	def sides
		[@side, @side, @side, @side]
	end
end

class Triangle
	include Geometry 

	def initialize(size)
		@size = size 
	end

	def sides
		[@side, @side, @side]
	end
end