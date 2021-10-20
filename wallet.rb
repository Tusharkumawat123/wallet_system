require './wallet_item.rb'

class Wallet
  attr_accessor :balance, :transactions
  def initialize (id: 0, balance: 0, user_id: 0)
    @transactions = []
    @balance = 0
    @user_id = nil
   end

   def credit(amount: 0)
     @transactions << WalletItem.new(id: 1, amt: amount, note: 'CREDIT') 
     @balance += amount
   end

  def debit(amount: 0)
    @transactions << WalletItem.new(id: 1, amt: amount, note: 'DEBIT')
    @balance -= amount
  end

  def list_transactions
    print "#########Transactions_List#############","\n"
    print "ID  |  AMOUNT  |  NOTE\n"
    for item in transactions
      p "#{item.id}  |  #{item.amount}  | #{item.note} \n" 
    end
  end

end