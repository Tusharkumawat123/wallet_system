
require './user.rb'
require './wallet.rb'



# driver logic
input = 0
while true do
 puts "############ MENU ############"
 puts "1.Enter USER NAME"
 puts "2.CREDIT"
 puts "3.DEBIT"
 puts "4.PASSBOOK"
 puts "5.EXIT"

 puts "Enter the Choice:"
    @value = gets.chomp.to_i
   
    case @value
    when 1
      puts "ENTER USER NAME:"
      name = gets.chomp
      puts "Enter account number:"
      account = gets.chomp
      user = User.new(id: 1, name: name, ac: account) 
      User.insert = user
      wallet = Wallet.new(id: 1, balance: 0 , user_id: user.id)
    when 2 
      puts "CREDIT"
      puts "Enter the amount"
      puts wallet.credit(amount: gets.chomp.to_i)
    when 3 
      puts "DEBIT"
      puts "Enter the amount "
      puts wallet.debit(amount: gets.chomp.to_i)
    when 4
      puts "PASSBOOK"
      puts wallet.list_transactions
    when 5
      break
    end
end



