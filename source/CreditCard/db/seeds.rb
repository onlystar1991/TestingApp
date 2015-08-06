# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer_list = [
  [ "Jonhy", "Flow"],
  [ "Raj", "Jamnis"],
  [ "Andrew", "Chung" ],
  [ "Mike", "Smith" ]
]

customer_list.each do |fistname, lastname|
  Customer.create( fistname: fistname, lastname: lastname )
end

success_transaction_list = [ [1389618543, true, 3000, "usd", false, 1],
														 [1389623456, true, 4000, "usd", false, 1],
														 [1389654654, true, 5000, "usd", false, 1],
														 [1381328563, true, 6000, "usd", false, 1],
														 [1381633463, true, 7000, "usd", false, 1],
														 [1382196314, true, 8000, "usd", false, 2],
														 [1381655348, true, 9000, "usd", false, 2],
														 [1382318499, true, 5200, "usd", false, 2],
														 [1382656859, true, 6500, "usd", false, 3],
														 [1389985361, true, 9300, "usd", false, 4]]

fail_transaction_list =    [ [1382196314, false, 3500, "usd", false, 3],
														 [1381655348, false, 5400, "usd", false, 3],
														 [1382318499, false, 5500, "usd", false, 3],
														 [1382656859, false, 5400, "usd", false, 4],
														 [1389985361, false, 3200, "usd", false, 4]]

disputed_transaction_list =[ [1382195423, true, 3300, "usd", true, 1],
														 [1381243248, true, 6800, "usd", true, 1],
														 [1382398315, true, 5100, "usd", true, 1],
														 [1335653349, true, 5400, "usd", true, 2],
														 [1389986566, true, 3000, "usd", true, 2]]


success_transaction_list.each do |created, paid, amount, currency, refund, customer_id|
  Creditcharge.create( created: created, paid: paid, amount: amount,  currency: currency, refunded: refund, customer_id: customer_id )
end

fail_transaction_list.each do |created, paid, amount, currency, refund, customer_id|
  Creditcharge.create( created: created, paid: paid, currency: currency, amount: amount, refunded: refund, customer_id: customer_id )
end

disputed_transaction_list.each do |created, paid, amount, currency, refund, customer_id|
  Creditcharge.create( created: created, paid: paid, currency: currency, amount: amount,  refunded: refund, customer_id: customer_id )
end
