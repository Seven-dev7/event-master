require 'rails_helper'

RSpec.describe LineItem, type: :model do
  let(:user) { create(:user)}
  let(:product) { create(:product) }
  let(:cart) { create(:cart, user_id: user.id) }
  let(:line_item) { build(:line_item, cart_id: cart.id, product_id: product.id) }

  describe 'Validations' do
    it { expect(line_item).to be_valid }
  end
end
