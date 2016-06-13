require_relative 'Weaponc'
require_relative 'Weaponbna'
require_relative 'Weaponsword'
require_relative 'weaponknife'
require_relative 'weaponaxe'
require_relative 'Char'
require_relative 'Charking'
require_relative 'Charqueen'
require_relative 'Charknight'
require_relative 'Chartroll'


class App

  def initialize
    main_menu
    
  end

  def randwep(opp)
    x=Random.rand(1..4)
    if x==1
      opp.setweapon(Bowandarrow.new)
    elsif  x==2 
      opp.setweapon(Sword.new)
    elsif x==3
      opp.setweapon(Knife.new)
    else x==4
      opp.setweapon(Axe.new)
    end
  end
    
  def main_menu
    puts "Which character would you like to fight?
      1: King (Speed: 4   Strength: 4  Skill: 4)
      2: Queen  (Speed: 4   Strength: 2  Skill: 6)
      3: Knight  (Speed: 6   Strength: 6  Skill: 6)
      4: Troll  (Speed: 2   Strength: 8  Skill: 2)"
      
    case gets.strip
    when "1"
      char1 = King.new()
         
      char1.setweapon(menu_2)
      op1=menu_3(char1)
     
    when "2"
      char2 = Queen.new()
      
      char2.setweapon(menu_2)
      op2=menu_3(char2)
      
    when "3"
      char3= Knight.new()
      
      char3.setweapon(menu_2)
      op3=menu_3(char3)
     
    when "4"
      char4= Troll.new()
      
      char4.setweapon(menu_2)
      op4=menu_3(char4)
      
    else
      puts "Choose either 1, 2, 3 or 4."
      main_menu
    end
  end
  def menu_2
    puts "Which weapon would you like to choose?
      1: Bow and Arrow  (Speed: 3   Strength: 1  Skill: 3)
      2: Sword  (Speed: 2   Strength: 3  Skill: 2)
      3: Knife  (Speed: 3   Strength: 2  Skill: 2)
      4: Axe  (Speed: 1   Strength: 4  Skill:1)"
      
    case gets.strip
    when "1"
      wep1 = Bowandarrow.new()
      return wep1
    when "2"
      wep2 = Sword.new()
      return wep2
    when "3"
      wep3= Knife.new()
      return wep3
    when "4"
      wep4= Axe.new()
      return wep4
    else
      puts "Choose either 1, 2, 3 or 4."
      menu_2
    end
  end
  def menu_3(me)

    puts "Choose your opponent ?"
    
    carray=[King.new,Queen.new,Knight.new,Troll.new]
    while carray.length>0 do
      i=1
    carray.each { |x| 
      puts '    '+i.to_s + ':  ' + x.name 
      i=i+1
    }
    i=gets.strip.to_i
    opchar=carray[i-1]
    randwep(opchar)
    carray.delete_at(i-1)
    if me.fight(opchar)=='lost'
        return
    end

  end
  puts "YOU WON THE GAME"

  end



end

App.new 
		