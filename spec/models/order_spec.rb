require 'rails_helper'

RSpec.describe Order, type: :model do
 before :each do
   Order = Order.new(id: 1,
    subtotal: 30,
    total: 30,
    shipping: nil,
    created_at: "2018-09-06 21:45:44",
    updated_at: "2018-09-06 21:45:44")
 end


  let(:unit_price) {10}
  let(:quantity) {3}
  let(:total_price) {30}
  let(:subtotal) {unit_price*quantity}


  describe "Order" do

    xit 'returns subtotal' do
      expect(Order).to receive(:subtotal).and_return(total_price)

    end
  end

end
