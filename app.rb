
require './user.rb'
require './wallet.rb'

# driver logic
input = 0
while true do
  user_params = {}
  puts "Enter id"
  user_params[:id] = gets.chomp().to_i

  puts "Enter name"
  user_params[:name] = gets.chomp()

  puts "Enter Account Number:"
  user_params[:ac] = gets.chomp().to_i

  user = User.new(user_params)

  pp user

  # inserting user into list
  User.insert = user

  puts User.count
  input +=1
  if input > 2
    break
    end
end



# wallet = Wallet.new

# puts "enter the discreption:"
# dis = gets.chomp
# puts "enter the amount:"
# amount = gets.chomp.to_i

# a = wallet.credit(dis, amount)
# p a