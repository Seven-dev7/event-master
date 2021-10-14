require 'rails_helper'

RSpec.describe UserInformation, type: :model do
  let(:user) { create(:user) }
  let(:user_information) { build(:user_information, user_id: user.id)}

  describe 'Validations' do
    it { expect(user_information).to be_valid }
  end
  
end