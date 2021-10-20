require './wallet_item.rb'

class Wallet
  attr_reader :balance
  def initialize 
    @transactions = []
    @balance = 0
   end

   def credit(amount: 0)
     @balance += amount
     @transactions << WalletItem.new(id: 1, amt: amount, note: 'CREDIT') 
   end

  def debit(amount: 0)
    @balance -= amount
    @transactions << WalletItem.new(id: 1, amt: amount, note: 'DEBIT')
  end

end

# driver logic
 mywallet = Wallet.new
#puts mywallet.balance
print "Enter the cried amount:"
p mywallet.credit(amount: gets.chomp.to_i)
puts mywallet.balance
print "Enter debit amount:"
 p mywallet.debit(amount: gets.chomp.to_i)
puts mywallet.balance