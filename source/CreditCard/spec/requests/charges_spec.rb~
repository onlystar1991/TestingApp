require 'spec_helper'

RSpec.describe "Charges", type: :request do

		before do
		  @success_charge = Creditcharge.where(refunded: false, paid: true)
			@fail_charges = Creditcharge.where(paid: false)

		end
  describe "GET /charges" do
    it "works! (now write some real specs)" do
      get charges_path
			
      expect(response).to have_http_status(200)
    end

		it "should have 3 List items" do
			visit '/charges'
			expect(page).to have_content("Failed Charges")
			expect(page).to have_content("Disputed Charges")
			expect(page).to have_content("Successed Charge")
		end
		
		it "should have 10 success item and 5 failed item" do
			@count = @success_charge.length
			@fail_count = @fail_charges.length
			expect(@count).to equal(10)
			expect(@fail_count).to equal(5)
		end

  end
end
