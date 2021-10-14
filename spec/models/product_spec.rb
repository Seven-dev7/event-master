require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { build(:product) }

  describe 'Validations' do
    it { expect(product).to be_valid }
    it { expect(product).to validate_length_of(:price).is_at_least(8) }
  end
  
  
end
