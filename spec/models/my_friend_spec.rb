require 'rails_helper'

RSpec.describe MyFriend, type: :model do
  describe 'validation of attributes' do
    context "with presence of value" do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:street) }
      it { is_expected.to validate_presence_of(:zip_code) }
      it { is_expected.to validate_presence_of(:city) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:latitude) }
      it { is_expected.to validate_presence_of(:longitude) }
      it { is_expected.to validate_presence_of(:mobile) }
    end

    context "with character length of at most 100" do
      it { is_expected.to validate_length_of(:first_name).is_at_most(100) }
    end
    
  end

  describe 'numericality of attribute mobile' do
    context 'with a numeric value' do
      it { is_expected.to validate_numericality_of(:mobile) }
    end
  end
end