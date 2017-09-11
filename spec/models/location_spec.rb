require 'rails_helper'

RSpec.describe Location, type: :model do

  describe 'associations' do
    it { should have_one(:address) }
    it { should belong_to(:trip) }
  end

end
