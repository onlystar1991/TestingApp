class ChargesController < ApplicationController

def index

	@successed_charges = Creditcharge.where(refunded: false, paid: true)
	@fail_charges = Creditcharge.where(paid: false)
#	@fail_charges = Creditcharge.find_by(paid: false)
	@disputed_charges = Creditcharge.where(refunded: true, paid: true)

	puts "======================"
	puts @successed_charges.inspect
#	render text: @successed_charges.length.to_s << "Fail" << @fail_charges.length.to_s << "Disputed" << @disputed_charges.length.to_s
end

end
