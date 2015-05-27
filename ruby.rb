class Nave
	attr_accessor :puntox
	attr_accessor :puntoy
	attr_accessor :puntoz
	attr_accessor :location
	attr_accessor :name
	def initialize(puntox, name)
		@puntox = puntox
		@puntoy = puntox + (rand(2)+1)
		@puntoz = puntox + (rand(2)+1)
		@name = name
		@location = [@puntox, @puntoy, @puntoz]
	end

	def hit(shot, battleships)
		if (shot - battleships).empty?
			 return true
		else 
			return false
		end
	end
end



def generaNaves(naves)
	totalships = []
	naves.times do |ship|
		ship = Nave.new(rand(8), "Nave #{ship}")
		totalships = totalships << ship
	end 

	return totalships
end


def play()
	
	puts "Cuantas naves quieres?"
	quant = gets.chomp.to_i

	start = generaNaves(quant)
	start.each do |i|
		puts "#{i.location} #{i.name}"
	end


	puts "Dame x"
	x = gets.chomp.to_i
	puts "Dame y"
	y = gets.chomp.to_i
	z = [x, y]



	start.each do |i|
		if i.hit(z, i.location) == true
			puts "You shot down #{i.name} at #{i.puntox},#{i.puntoy}! Its' lenght was #{i.puntoz-i.puntox}"
		else
			puts "You missed"
		end
	end
end



play()






=begin a = generaNaves(2)

a.each do |i|
	puts "#{i.location} #{i.name}"
end
=end