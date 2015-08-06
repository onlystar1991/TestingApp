require 'test_helper'

RSpec.describe "charges/index" do


    before(:each) do
      assign(:success_charges, 
        Creditcharge.where(refunded: false, paid: true)
      )
    end

    it "displays success_charges" do
      render

      expect(lenght).to match 10
      #expect(rendered).to match /dicer/
    end


end
