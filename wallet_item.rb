class WalletItem
  attr_accessor :id, :amount, :note
  def initialize(id: 0, amt: 0, note: '')
    @id = id
    @amount = amt
    @note = note
    @balance = 0
  end
end