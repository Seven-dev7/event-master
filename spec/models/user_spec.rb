require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  describe 'Validations' do
    it { expect(user).to be_valid }
  end
  
end
