require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:user) { create(:user) }
  let(:product) { create(:product, price: 2) }
  let(:cart) { create(:cart, user_id: user.id) }
  let(:line_item) { create(:line_item, cart_id: cart.id, product_id: product.id, quantity: 1) }

  describe 'Validations' do
    it { expect(cart).to be_valid }
  end

  describe ".add_products" do
    it "return current item" do
      expect(cart.add_products(product)).to eq(cart.line_items.last)
    end
    
    it "quantity + 1" do
      expect(line_item.quantity).to eq(1)
    end
  end

  describe "total_price" do
    it "return total cart price" do
      expect(cart.total_price).to eq(cart.line_items.to_a.sum{ |item| item.total_price } )
    end
  end

end
