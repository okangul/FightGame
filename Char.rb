class Character

    attr_reader :speed
    attr_reader :strength
    attr_reader :skill
    attr_reader :weapon
	attr_reader :luck
	attr_reader :name

	def initialize(speed,strength,skill,name)
		@speed=speed
		@strength=strength
		@skill=skill
		@weapon=nil
		@luck=Random.rand(1..10)
		@name=name
	end


	def setweapon(weapon)
		@weapon=weapon
	end

	def getweapon()
		return self.weapon
	end

	def fight(opponent)
		
		total=self.speed+(self.strength*3)+(self.skill*2)+self.getweapon().wspeed+(self.getweapon().wstrength*3)+(self.getweapon().wskill*2)+self.luck
		total2=opponent.speed+(opponent.strength*3)+(opponent.skill*2)+opponent.luck+opponent.getweapon().wspeed+(opponent.getweapon().wstrength*3)+(opponent.getweapon().wskill*2)
		if total >total2
			puts"You won this round"
		else
			puts"Game Over"
			return 'lost'
		end
	end




end





 



  

  
