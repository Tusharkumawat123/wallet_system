class Wallet
  def initialize 
    @transaction = []
     add_transaction("begening blance", 0 )
   end

   def credit(discreption, amount)
    add_transaction(discreption, amount)
  end

  def debit(discreption, amount)
    add_transaction(discreption, -amount)
  end

  def add_transaction(discreption, amount)
    @transaction.push(discreption: discreption, amount: amount)
  end

end