class Menu
  attr_accessor :value 

  def initialize
    @value=0
  end

  def  self.show
    puts "############ MENU ############"
    puts "1.Enter USER NAME"
    puts "2.CREDIT"
    puts "3.DEBIT"
    puts "4.PASSBOOK"
    puts "5.EXIT"
  end

  def user_input
    
  end
end

menus = Menu.new
Menu::show
val = menus.user_input
